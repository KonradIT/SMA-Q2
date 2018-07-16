.class public interface abstract Lcom/qiniu/android/http/IReport;
.super Ljava/lang/Object;
.source "IReport.java"


# virtual methods
.method public abstract appendStatHeaders([Lorg/apache/http/Header;)[Lorg/apache/http/Header;
.end method

.method public abstract updateErrorInfo(Lcom/qiniu/android/http/ResponseInfo;)V
.end method

.method public abstract updateSpeedInfo(Lcom/qiniu/android/http/ResponseInfo;)V
.end method
