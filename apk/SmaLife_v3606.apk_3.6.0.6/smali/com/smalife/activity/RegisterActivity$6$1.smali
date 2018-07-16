.class Lcom/smalife/activity/RegisterActivity$6$1;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Lcom/accloud/cloudservice/PayloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/RegisterActivity$6;->success(Lcom/accloud/service/ACUserInfo;)V
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
        "Lcom/accloud/service/ACObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smalife/activity/RegisterActivity$6;

.field private final synthetic val$account:Ljava/lang/String;

.field private final synthetic val$password:Ljava/lang/String;

.field private final synthetic val$user:Lcom/accloud/service/ACUserInfo;


# direct methods
.method constructor <init>(Lcom/smalife/activity/RegisterActivity$6;Ljava/lang/String;Lcom/accloud/service/ACUserInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/RegisterActivity$6$1;->this$1:Lcom/smalife/activity/RegisterActivity$6;

    iput-object p2, p0, Lcom/smalife/activity/RegisterActivity$6$1;->val$account:Ljava/lang/String;

    iput-object p3, p0, Lcom/smalife/activity/RegisterActivity$6$1;->val$user:Lcom/accloud/service/ACUserInfo;

    iput-object p4, p0, Lcom/smalife/activity/RegisterActivity$6$1;->val$password:Ljava/lang/String;

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/smalife/activity/RegisterActivity$6$1;)Lcom/smalife/activity/RegisterActivity$6;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity$6$1;->this$1:Lcom/smalife/activity/RegisterActivity$6;

    return-object v0
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 3
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 389
    const-string v0, "ljh"

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 391
    const-string v2, "/message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 392
    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 390
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 389
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    return-void
.end method

.method public success(Lcom/accloud/service/ACObject;)V
    .locals 8
    .param p1, "obj"    # Lcom/accloud/service/ACObject;

    .prologue
    .line 397
    if-eqz p1, :cond_0

    .line 398
    iget-object v1, p0, Lcom/smalife/activity/RegisterActivity$6$1;->this$1:Lcom/smalife/activity/RegisterActivity$6;

    invoke-static {v1}, Lcom/smalife/activity/RegisterActivity$6;->access$1(Lcom/smalife/activity/RegisterActivity$6;)Lcom/smalife/activity/RegisterActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/smalife/activity/RegisterActivity;->access$14(Lcom/smalife/activity/RegisterActivity;)Lcom/smalife/db/entity/UserEntity;

    move-result-object v1

    iget-object v4, p0, Lcom/smalife/activity/RegisterActivity$6$1;->val$account:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/smalife/db/entity/UserEntity;->setAccount(Ljava/lang/String;)V

    .line 399
    iget-object v1, p0, Lcom/smalife/activity/RegisterActivity$6$1;->this$1:Lcom/smalife/activity/RegisterActivity$6;

    invoke-static {v1}, Lcom/smalife/activity/RegisterActivity$6;->access$1(Lcom/smalife/activity/RegisterActivity$6;)Lcom/smalife/activity/RegisterActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/smalife/activity/RegisterActivity;->access$14(Lcom/smalife/activity/RegisterActivity;)Lcom/smalife/db/entity/UserEntity;

    move-result-object v1

    .line 400
    const-string v4, "hight"

    invoke-virtual {p1, v4}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 399
    invoke-virtual {v1, v4}, Lcom/smalife/db/entity/UserEntity;->setHight(Ljava/lang/Integer;)V

    .line 402
    const-string v1, "weight"

    invoke-virtual {p1, v1}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 404
    .local v2, "w":J
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 403
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 405
    .local v0, "m":F
    iget-object v1, p0, Lcom/smalife/activity/RegisterActivity$6$1;->this$1:Lcom/smalife/activity/RegisterActivity$6;

    invoke-static {v1}, Lcom/smalife/activity/RegisterActivity$6;->access$1(Lcom/smalife/activity/RegisterActivity$6;)Lcom/smalife/activity/RegisterActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/smalife/activity/RegisterActivity;->access$14(Lcom/smalife/activity/RegisterActivity;)Lcom/smalife/db/entity/UserEntity;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/smalife/db/entity/UserEntity;->setWeight(Ljava/lang/Float;)V

    .line 406
    iget-object v1, p0, Lcom/smalife/activity/RegisterActivity$6$1;->this$1:Lcom/smalife/activity/RegisterActivity$6;

    invoke-static {v1}, Lcom/smalife/activity/RegisterActivity$6;->access$1(Lcom/smalife/activity/RegisterActivity$6;)Lcom/smalife/activity/RegisterActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/smalife/activity/RegisterActivity;->access$14(Lcom/smalife/activity/RegisterActivity;)Lcom/smalife/db/entity/UserEntity;

    move-result-object v1

    .line 407
    const-string v4, "sex"

    invoke-virtual {p1, v4}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 406
    invoke-virtual {v1, v4}, Lcom/smalife/db/entity/UserEntity;->setSex(Ljava/lang/Integer;)V

    .line 408
    iget-object v1, p0, Lcom/smalife/activity/RegisterActivity$6$1;->this$1:Lcom/smalife/activity/RegisterActivity$6;

    invoke-static {v1}, Lcom/smalife/activity/RegisterActivity$6;->access$1(Lcom/smalife/activity/RegisterActivity$6;)Lcom/smalife/activity/RegisterActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/smalife/activity/RegisterActivity;->access$14(Lcom/smalife/activity/RegisterActivity;)Lcom/smalife/db/entity/UserEntity;

    move-result-object v1

    .line 409
    const-string v4, "age"

    invoke-virtual {p1, v4}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 408
    invoke-virtual {v1, v4}, Lcom/smalife/db/entity/UserEntity;->setAge(Ljava/lang/Integer;)V

    .line 410
    iget-object v1, p0, Lcom/smalife/activity/RegisterActivity$6$1;->this$1:Lcom/smalife/activity/RegisterActivity$6;

    invoke-static {v1}, Lcom/smalife/activity/RegisterActivity$6;->access$1(Lcom/smalife/activity/RegisterActivity$6;)Lcom/smalife/activity/RegisterActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/smalife/activity/RegisterActivity;->access$14(Lcom/smalife/activity/RegisterActivity;)Lcom/smalife/db/entity/UserEntity;

    move-result-object v1

    .line 411
    const-string v4, "header_url"

    invoke-virtual {p1, v4}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 410
    invoke-virtual {v1, v4}, Lcom/smalife/db/entity/UserEntity;->setHeader_url(Ljava/lang/String;)V

    .line 412
    iget-object v1, p0, Lcom/smalife/activity/RegisterActivity$6$1;->this$1:Lcom/smalife/activity/RegisterActivity$6;

    invoke-static {v1}, Lcom/smalife/activity/RegisterActivity$6;->access$1(Lcom/smalife/activity/RegisterActivity$6;)Lcom/smalife/activity/RegisterActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/smalife/activity/RegisterActivity;->access$14(Lcom/smalife/activity/RegisterActivity;)Lcom/smalife/db/entity/UserEntity;

    move-result-object v1

    iget-object v4, p0, Lcom/smalife/activity/RegisterActivity$6$1;->val$user:Lcom/accloud/service/ACUserInfo;

    invoke-virtual {v4}, Lcom/accloud/service/ACUserInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/smalife/db/entity/UserEntity;->setNickName(Ljava/lang/String;)V

    .line 413
    iget-object v1, p0, Lcom/smalife/activity/RegisterActivity$6$1;->this$1:Lcom/smalife/activity/RegisterActivity$6;

    invoke-static {v1}, Lcom/smalife/activity/RegisterActivity$6;->access$1(Lcom/smalife/activity/RegisterActivity$6;)Lcom/smalife/activity/RegisterActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/smalife/activity/RegisterActivity;->application:Lcom/smalife/MyApplication;

    iget-object v4, p0, Lcom/smalife/activity/RegisterActivity$6$1;->val$account:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/smalife/MyApplication;->editAccount(Ljava/lang/String;)V

    .line 414
    iget-object v1, p0, Lcom/smalife/activity/RegisterActivity$6$1;->this$1:Lcom/smalife/activity/RegisterActivity$6;

    invoke-static {v1}, Lcom/smalife/activity/RegisterActivity$6;->access$1(Lcom/smalife/activity/RegisterActivity$6;)Lcom/smalife/activity/RegisterActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/smalife/activity/RegisterActivity;->application:Lcom/smalife/MyApplication;

    .line 415
    iget-object v4, p0, Lcom/smalife/activity/RegisterActivity$6$1;->val$password:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/smalife/MyApplication;->editAccountPwd(Ljava/lang/String;)V

    .line 416
    iget-object v1, p0, Lcom/smalife/activity/RegisterActivity$6$1;->this$1:Lcom/smalife/activity/RegisterActivity$6;

    invoke-static {v1}, Lcom/smalife/activity/RegisterActivity$6;->access$1(Lcom/smalife/activity/RegisterActivity$6;)Lcom/smalife/activity/RegisterActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/smalife/activity/RegisterActivity;->application:Lcom/smalife/MyApplication;

    iget-object v4, p0, Lcom/smalife/activity/RegisterActivity$6$1;->val$user:Lcom/accloud/service/ACUserInfo;

    .line 417
    invoke-virtual {v4}, Lcom/accloud/service/ACUserInfo;->getName()Ljava/lang/String;

    move-result-object v4

    .line 416
    invoke-virtual {v1, v4}, Lcom/smalife/MyApplication;->editNickName(Ljava/lang/String;)V

    .line 419
    iget-object v1, p0, Lcom/smalife/activity/RegisterActivity$6$1;->this$1:Lcom/smalife/activity/RegisterActivity$6;

    invoke-static {v1}, Lcom/smalife/activity/RegisterActivity$6;->access$1(Lcom/smalife/activity/RegisterActivity$6;)Lcom/smalife/activity/RegisterActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/smalife/activity/RegisterActivity;->mHandler:Landroid/os/Handler;

    .line 420
    new-instance v4, Lcom/smalife/activity/RegisterActivity$6$1$1;

    invoke-direct {v4, p0}, Lcom/smalife/activity/RegisterActivity$6$1$1;-><init>(Lcom/smalife/activity/RegisterActivity$6$1;)V

    .line 434
    const-wide/16 v6, 0x7d0

    .line 419
    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 436
    .end local v0    # "m":F
    .end local v2    # "w":J
    :cond_0
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/accloud/service/ACObject;

    invoke-virtual {p0, p1}, Lcom/smalife/activity/RegisterActivity$6$1;->success(Lcom/accloud/service/ACObject;)V

    return-void
.end method
