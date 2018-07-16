.class Lcom/qiniu/android/http/HttpManager$1;
.super Ljava/lang/Object;
.source "HttpManager.java"

# interfaces
.implements Lcom/qiniu/android/http/IReport;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/http/HttpManager;-><init>(Lcom/qiniu/android/http/Proxy;Lcom/qiniu/android/http/IReport;Ljava/lang/String;IILcom/qiniu/android/http/UrlConverter;Lcom/qiniu/android/dns/DnsManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/http/HttpManager;


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/HttpManager;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/qiniu/android/http/HttpManager$1;->this$0:Lcom/qiniu/android/http/HttpManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appendStatHeaders([Lorg/apache/http/Header;)[Lorg/apache/http/Header;
    .locals 0
    .param p1, "headers"    # [Lorg/apache/http/Header;

    .prologue
    .line 56
    return-object p1
.end method

.method public updateErrorInfo(Lcom/qiniu/android/http/ResponseInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/qiniu/android/http/ResponseInfo;

    .prologue
    .line 62
    return-void
.end method

.method public updateSpeedInfo(Lcom/qiniu/android/http/ResponseInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/qiniu/android/http/ResponseInfo;

    .prologue
    .line 67
    return-void
.end method
