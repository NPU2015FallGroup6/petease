package com.petease.app.domain;
public class Post extends User{
    //class member
	private String content;
	private String picUrl;
	private String createDate;
        private boolean reported;
	private String reportedDate;
        private User commentAdmin;
        private String status;
        private String deleteDate;
        private int rate;
        private int viewCount;
        private int commentCount;
	
	//constructor
	Post(){
          this.content="";
          this.picUrl="";
          this.createDate="";
          this.reported=false;
          this.reportedDate="";
          commentAdmin=new User();
          this.status="";
          this.deleteDate="";
          this.rate=0;
          this.viewCount=0;
          this.commentCount=0;
          }
	
	//setter
        public void setContent(String content) {
		this.content= content;

	}
	public String getContent() {
		return this.content;
	}
        public void setPicUrl(String picUrl) {
		this.picUrl = picUrl;
	}
	public String getPicUrl() {
		return this.picUrl;
	}
        public void setCreatedDate(String createDate) {
		this.createDate = createDate;
	}
	public String getCreatedDate() {
		return this.createDate;
	}
         public void setReported(boolean reported) {
		this.reported = reported;
	}
	public boolean getReported() {
		return this.reported;
	}
         public void setReportedDate(String reportedDate) {
		this.reportedDate = reportedDate;
	}
	public String getReportedDate() {
		return this.reportedDate;
	}
        public void setCommentAdmin(User commentAdmin) {
		this.commentAdmin = commentAdmin;
	}
        public User getCommentAdmin() {
		return this.commentAdmin;
	}
         public void setStatus(String status) {
		this.status = status;
	}
	public String getStatus() {
		return this.status;
	}
         public void setDeleteDate(String deleteDate) {
		this.deleteDate = deleteDate;
	}
	public String getDeleteDate() {
		return this.deleteDate;
	}
         public void setRate(int rate) {
		this.rate = rate;
	}
	public int getRate() {
		return this.rate;
	}
        public void setViewCount(int viewCount) {
		this.viewCount= viewCount;
	}
	public int getViewCount() {
		return this.viewCount;
	}
         public void setCommentount(int commentCount) {
		this.viewCount= viewCount;
	}
	public int getCommentCount() {
		return this.commentCount;
	}
        
	//toString
	@Override
	public String toString() {
		return "content = " + this.content +
			   ", picUrl = " + this.picUrl +
			   ", createDate = " + this.createDate +
                           ", reported = " + this.reported +
                           ", reportedDate = " + this.reportedDate +
                           ", commentAdmin = [" + this.commentAdmin.toString() + "]"+
                           ", status = " + this.status +
                           ", daleteDate = " + this.deleteDate +
                           ", rate = " + this.rate +
                           ", viewCount = " + this.viewCount +
                           ", commentCount = " + this.commentCount ;
	}
	
	//equals
	@Override
	public boolean equals(Object obj) {
		if(!(obj instanceof Post)) {
			return false;
		}
		Post postObj = (Post) obj;
		return (this.content.equals(postObj.content)) &&
		       (this.picUrl.equals(postObj.picUrl)) &&
		       (this.createDate.equals(postObj.createDate)) &&
                       (this.reported == postObj.reported) &&
                       (this.reportedDate.equals(postObj.reportedDate)) &&
                       (this.commentAdmin.equals(postObj.commentAdmin))&&
                       (this.status.equals(postObj.status)) &&
                       (this.deleteDate.equals(postObj.deleteDate)) &&
                       (this.rate == postObj.rate) &&
                       (this.viewCount == postObj.viewCount) &&
                       (this.commentCount == postObj.commentCount) ;
	}
	
	//clone
	@Override
	public Post clone() {
		Post postObj = new Post();
		postObj.content = new String(this.content);
                postObj.picUrl = new String(this.picUrl);
                postObj.createDate = new String(this.createDate);
                postObj.reported = new Boolean(this.reported);
                postObj.reportedDate =new String(this.reportedDate);
                postObj.commentAdmin.clone();
                postObj.status = new String(this.status);
                postObj.deleteDate = new String(this.deleteDate);
                postObj.rate = new Integer(this.rate);
                postObj.viewCount = new Integer(this.viewCount);
                postObj.commentCount =new Integer(this.commentCount);
		
		return postObj;
	}
}