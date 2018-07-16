.class Lcom/smalife/DownLoadDataService$1;
.super Ljava/lang/Object;
.source "DownLoadDataService.java"

# interfaces
.implements Lcom/accloud/cloudservice/PayloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/DownLoadDataService;->getFriends(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/accloud/cloudservice/PayloadCallback",
        "<",
        "Lcom/accloud/service/ACMsg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/DownLoadDataService;


# direct methods
.method constructor <init>(Lcom/smalife/DownLoadDataService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/DownLoadDataService$1;->this$0:Lcom/smalife/DownLoadDataService;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 0
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 75
    return-void
.end method

.method public success(Lcom/accloud/service/ACMsg;)V
    .locals 3
    .param p1, "msg"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 79
    const-string v1, "friend"

    invoke-virtual {p1, v1}, Lcom/accloud/service/ACMsg;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/accloud/service/ACObject;

    .line 80
    .local v0, "myFriend":Lcom/accloud/service/ACObject;
    if-eqz v0, :cond_0

    .line 81
    iget-object v1, p0, Lcom/smalife/DownLoadDataService$1;->this$0:Lcom/smalife/DownLoadDataService;

    invoke-static {v1}, Lcom/smalife/DownLoadDataService;->access$0(Lcom/smalife/DownLoadDataService;)Lcom/smalife/MyApplication;

    move-result-object v1

    const-string v2, "friend_account"

    invoke-virtual {v0, v2}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smalife/MyApplication;->editFriendAccount(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/smalife/DownLoadDataService$1;->this$0:Lcom/smalife/DownLoadDataService;

    invoke-static {v1}, Lcom/smalife/DownLoadDataService;->access$0(Lcom/smalife/DownLoadDataService;)Lcom/smalife/MyApplication;

    move-result-object v1

    const-string v2, "friendName"

    invoke-virtual {v0, v2}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smalife/MyApplication;->editFriendName(Ljava/lang/String;)V

    .line 84
    :cond_0
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/accloud/service/ACMsg;

    invoke-virtual {p0, p1}, Lcom/smalife/DownLoadDataService$1;->success(Lcom/accloud/service/ACMsg;)V

    return-void
.end method
