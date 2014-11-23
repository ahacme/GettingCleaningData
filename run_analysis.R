
#Data Extraction
featureList<-read.table("features.txt",as.is=TRUE) #avoid factor conversion
activityLabels<-read.table("activity_labels.txt")
xtest<-read.table("./test/X_test.txt")
ytest<-read.table("./test/y_test.txt")
subjecttest<-read.table("./test/subject_test.txt")
subjecttrain<-read.table("./train/subject_train.txt")
ytrain<-read.table("./train/y_train.txt")
xtrain<-read.table("./train/X_train.txt")



#Merging Data
xcombined<-rbind(xtrain,xtest)
ycombined<-rbind(ytrain,ytest)
subjectcombined<-rbind(subjecttrain,subjecttest)

#Activity Assignment

ycombined$V1[ycombined==1]<-"WALKING"
ycombined$V1[ycombined==2]<-"WALKING_UPSTAIRS"
ycombined$V1[ycombined==3]<-"WALKING_DOWNSTAIRS"
ycombined$V1[ycombined==4]<-"SITTING"
ycombined$V1[ycombined==5]<-"STANDING"
ycombined$V1[ycombined==6]<-"LAYING"


#cleanup featureList
featureList$V2<-gsub("-","",featureList$V2)
featureList$V2<-gsub(",","",featureList$V2)

#Data Column Name assignment
names(xcombined)<-featureList$V2
names(ycombined)[1]<-"Activity"
names(subjectcombined)[1]<-"Subject"

#seperate mean and std data
meanindex<-grep("[Mm]ean",featureList$V2)
meandata<-xcombined[,meanindex]

stdindex<-grep("std",featureList$V2)
stddata<-xcombined[,stdindex]

#combine mean & std data frames to one
meanstdcombined<-cbind(meandata,stddata)

#Adding activity data to mean & std
activitymeanstd<-cbind(ycombined,meanstdcombined)

#Adding subject to the dataframe
subjectactivitymeanstd<-cbind(subjectcombined,activitymeanstd)
                              
#Factor conversion
subjectactivitymeanstd$Subject<-as.factor(subjectactivitymeanstd$Subject)
subjectactivitymeanstd$Activity<-as.factor(subjectactivitymeanstd$Activity)

#Final Aggregation
FinalData<-aggregate(subjectactivitymeanstd[,3:88],by=list(subjectactivitymeanstd$Subject,subjectactivitymeanstd$Activity),FUN=mean)
names(FinalData)[1:2]<-c("Subject","Activity")

#Create Text File
write.table(FinalData,"GCD_CourseProject-1.txt",row.names=FALSE)
