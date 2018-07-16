.class Lcom/smalife/activity/LoginActivity$2$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/accloud/cloudservice/PayloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/LoginActivity$2;->success(Lcom/accloud/service/ACUserInfo;)V
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
.field final synthetic this$1:Lcom/smalife/activity/LoginActivity$2;

.field private final synthetic val$account:Ljava/lang/String;

.field private final synthetic val$password:Ljava/lang/String;

.field private final synthetic val$user:Lcom/accloud/service/ACUserInfo;


# direct methods
.method constructor <init>(Lcom/smalife/activity/LoginActivity$2;Ljava/lang/String;Lcom/accloud/service/ACUserInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/LoginActivity$2$2;->this$1:Lcom/smalife/activity/LoginActivity$2;

    iput-object p2, p0, Lcom/smalife/activity/LoginActivity$2$2;->val$account:Ljava/lang/String;

    iput-object p3, p0, Lcom/smalife/activity/LoginActivity$2$2;->val$user:Lcom/accloud/service/ACUserInfo;

    iput-object p4, p0, Lcom/smalife/activity/LoginActivity$2$2;->val$password:Ljava/lang/String;

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/smalife/activity/LoginActivity$2$2;)Lcom/smalife/activity/LoginActivity$2;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/smalife/activity/LoginActivity$2$2;->this$1:Lcom/smalife/activity/LoginActivity$2;

    return-object v0
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 2
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "message "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 461
    const-string v1, ",error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 460
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 462
    return-void
.end method

.method public success(Lcom/accloud/service/ACObject;)V
    .locals 8
    .param p1, "obj"    # Lcom/accloud/service/ACObject;

    .prologue
    .line 466
    if-eqz p1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/smalife/activity/LoginActivity$2$2;->this$1:Lcom/smalife/activity/LoginActivity$2;

    invoke-static {v1}, Lcom/smalife/activity/LoginActivity$2;->access$1(Lcom/smalife/activity/LoginActivity$2;)Lcom/smalife/activity/LoginActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/smalife/activity/LoginActivity;->entity:Lcom/smalife/db/entity/UserEntity;

    iget-object v4, p0, Lcom/smalife/activity/LoginActivity$2$2;->val$account:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/smalife/db/entity/UserEntity;->setAccount(Ljava/lang/String;)V

    .line 468
    iget-object v1, p0, Lcom/smalife/activity/LoginActivity$2$2;->this$1:Lcom/smalife/activity/LoginActivity$2;

    invoke-static {v1}, Lcom/smalife/activity/LoginActivity$2;->access$1(Lcom/smalife/activity/LoginActivity$2;)Lcom/smalife/activity/LoginActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/smalife/activity/LoginActivity;->entity:Lcom/smalife/db/entity/UserEntity;

    .line 469
    const-string v4, "hight"

    invoke-virtual {p1, v4}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 468
    invoke-virtual {v1, v4}, Lcom/smalife/db/entity/UserEntity;->setHight(Ljava/lang/Integer;)V

    .line 471
    const-string v1, "weight"

    invoke-virtual {p1, v1}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 473
    .local v2, "w":J
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 472
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 474
    .local v0, "m":F
    iget-object v1, p0, Lcom/smalife/activity/LoginActivity$2$2;->this$1:Lcom/smalife/activity/LoginActivity$2;

    invoke-static {v1}, Lcom/smalife/activity/LoginActivity$2;->access$1(Lcom/smalife/activity/LoginActivity$2;)Lcom/smalife/activity/LoginActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/smalife/activity/LoginActivity;->entity:Lcom/smalife/db/entity/UserEntity;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/smalife/db/entity/UserEntity;->setWeight(Ljava/lang/Float;)V

    .line 475
    iget-object v1, p0, Lcom/smalife/activity/LoginActivity$2$2;->this$1:Lcom/smalife/activity/LoginActivity$2;

    invoke-static {v1}, Lcom/smalife/activity/LoginActivity$2;->access$1(Lcom/smalife/activity/LoginActivity$2;)Lcom/smalife/activity/LoginActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/smalife/activity/LoginActivity;->entity:Lcom/smalife/db/entity/UserEntity;

    .line 476
    const-string v4, "sex"

    invoke-virtual {p1, v4}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 475
    invoke-virtual {v1, v4}, Lcom/smalife/db/entity/UserEntity;->setSex(Ljava/lang/Integer;)V

    .line 477
    iget-object v1, p0, Lcom/smalife/activity/LoginActivity$2$2;->this$1:Lcom/smalife/activity/LoginActivity$2;

    invoke-static {v1}, Lcom/smalife/activity/LoginActivity$2;->access$1(Lcom/smalife/activity/LoginActivity$2;)Lcom/smalife/activity/LoginActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/smalife/activity/LoginActivity;->entity:Lcom/smalife/db/entity/UserEntity;

    .line 478
    const-string v4, "age"

    invoke-virtual {p1, v4}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 477
    invoke-virtual {v1, v4}, Lcom/smalife/db/entity/UserEntity;->setAge(Ljava/lang/Integer;)V

    .line 479
    iget-object v1, p0, Lcom/smalife/activity/LoginActivity$2$2;->this$1:Lcom/smalife/activity/LoginActivity$2;

    invoke-static {v1}, Lcom/smalife/activity/LoginActivity$2;->access$1(Lcom/smalife/activity/LoginActivity$2;)Lcom/smalife/activity/LoginActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/smalife/activity/LoginActivity;->entity:Lcom/smalife/db/entity/UserEntity;

    .line 480
    const-string v4, "header_url"

    invoke-virtual {p1, v4}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 479
    invoke-virtual {v1, v4}, Lcom/smalife/db/entity/UserEntity;->setHeader_url(Ljava/lang/String;)V

    .line 481
    iget-object v1, p0, Lcom/smalife/activity/LoginActivity$2$2;->this$1:Lcom/smalife/activity/LoginActivity$2;

    invoke-static {v1}, Lcom/smalife/activity/LoginActivity$2;->access$1(Lcom/smalife/activity/LoginActivity$2;)Lcom/smalife/activity/LoginActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/smalife/activity/LoginActivity;->entity:Lcom/smalife/db/entity/UserEntity;

    iget-object v4, p0, Lcom/smalife/activity/LoginActivity$2$2;->val$user:Lcom/accloud/service/ACUserInfo;

    invoke-virtual {v4}, Lcom/accloud/service/ACUserInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/smalife/db/entity/UserEntity;->setNickName(Ljava/lang/String;)V

    .line 482
    iget-object v1, p0, Lcom/smalife/activity/LoginActivity$2$2;->this$1:Lcom/smalife/activity/LoginActivity$2;

    invoke-static {v1}, Lcom/smalife/activity/LoginActivity$2;->access$1(Lcom/smalife/activity/LoginActivity$2;)Lcom/smalife/activity/LoginActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/smalife/activity/LoginActivity;->access$3(Lcom/smalife/activity/LoginActivity;)Lcom/smalife/MyApplication;

    move-result-object v1

    iget-object v4, p0, Lcom/smalife/activity/LoginActivity$2$2;->val$account:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/smalife/MyApplication;->editAccount(Ljava/lang/String;)V

    .line 483
    iget-object v1, p0, Lcom/smalife/activity/LoginActivity$2$2;->this$1:Lcom/smalife/activity/LoginActivity$2;

    invoke-static {v1}, Lcom/smalife/activity/LoginActivity$2;->access$1(Lcom/smalife/activity/LoginActivity$2;)Lcom/smalife/activity/LoginActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/smalife/activity/LoginActivity;->access$3(Lcom/smalife/activity/LoginActivity;)Lcom/smalife/MyApplication;

    move-result-object v1

    .line 484
    iget-object v4, p0, Lcom/smalife/activity/LoginActivity$2$2;->val$password:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/smalife/MyApplication;->editAccountPwd(Ljava/lang/String;)V

    .line 485
    iget-object v1, p0, Lcom/smalife/activity/LoginActivity$2$2;->this$1:Lcom/smalife/activity/LoginActivity$2;

    invoke-static {v1}, Lcom/smalife/activity/LoginActivity$2;->access$1(Lcom/smalife/activity/LoginActivity$2;)Lcom/smalife/activity/LoginActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/smalife/activity/LoginActivity;->access$3(Lcom/smalife/activity/LoginActivity;)Lcom/smalife/MyApplication;

    move-result-object v1

    iget-object v4, p0, Lcom/smalife/activity/LoginActivity$2$2;->val$user:Lcom/accloud/service/ACUserInfo;

    .line 486
    invoke-virtual {v4}, Lcom/accloud/service/ACUserInfo;->getName()Ljava/lang/String;

    move-result-object v4

    .line 485
    invoke-virtual {v1, v4}, Lcom/smalife/MyApplication;->editNickName(Ljava/lang/String;)V

    .line 487
    iget-object v1, p0, Lcom/smalife/activity/LoginActivity$2$2;->this$1:Lcom/smalife/activity/LoginActivity$2;

    invoke-static {v1}, Lcom/smalife/activity/LoginActivity$2;->access$1(Lcom/smalife/activity/LoginActivity$2;)Lcom/smalife/activity/LoginActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/smalife/activity/LoginActivity;->mHandler:Landroid/os/Handler;

    .line 488
    new-instance v4, Lcom/smalife/activity/LoginActivity$2$2$1;

    invoke-direct {v4, p0}, Lcom/smalife/activity/LoginActivity$2$2$1;-><init>(Lcom/smalife/activity/LoginActivity$2$2;)V

    .line 502
    const-wide/16 v6, 0x7d0

    .line 487
    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 504
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

    invoke-virtual {p0, p1}, Lcom/smalife/activity/LoginActivity$2$2;->success(Lcom/accloud/service/ACObject;)V

    return-void
.end method
