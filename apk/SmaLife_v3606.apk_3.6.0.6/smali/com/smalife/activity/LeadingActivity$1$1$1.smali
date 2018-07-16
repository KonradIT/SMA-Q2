.class Lcom/smalife/activity/LeadingActivity$1$1$1;
.super Ljava/lang/Object;
.source "LeadingActivity.java"

# interfaces
.implements Lcom/accloud/cloudservice/PayloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/LeadingActivity$1$1;->success(Lcom/accloud/service/ACUserInfo;)V
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
.field final synthetic this$2:Lcom/smalife/activity/LeadingActivity$1$1;


# direct methods
.method constructor <init>(Lcom/smalife/activity/LeadingActivity$1$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/LeadingActivity$1$1$1;->this$2:Lcom/smalife/activity/LeadingActivity$1$1;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 2
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/smalife/activity/LeadingActivity;

    .line 123
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    const-string v1, ">>>>getUserProfile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 125
    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 126
    const-string v1, "/message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 127
    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public success(Lcom/accloud/service/ACObject;)V
    .locals 10
    .param p1, "obj"    # Lcom/accloud/service/ACObject;

    .prologue
    .line 132
    new-instance v2, Lcom/smalife/db/entity/UserEntity;

    invoke-direct {v2}, Lcom/smalife/db/entity/UserEntity;-><init>()V

    .line 133
    .local v2, "user":Lcom/smalife/db/entity/UserEntity;
    if-eqz p1, :cond_0

    .line 134
    iget-object v3, p0, Lcom/smalife/activity/LeadingActivity$1$1$1;->this$2:Lcom/smalife/activity/LeadingActivity$1$1;

    invoke-static {v3}, Lcom/smalife/activity/LeadingActivity$1$1;->access$1(Lcom/smalife/activity/LeadingActivity$1$1;)Lcom/smalife/activity/LeadingActivity$1;

    move-result-object v3

    invoke-static {v3}, Lcom/smalife/activity/LeadingActivity$1;->access$0(Lcom/smalife/activity/LeadingActivity$1;)Lcom/smalife/activity/LeadingActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/smalife/activity/LeadingActivity;->access$1(Lcom/smalife/activity/LeadingActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smalife/db/entity/UserEntity;->setAccount(Ljava/lang/String;)V

    .line 136
    const-string v3, "hight"

    invoke-virtual {p1, v3}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 135
    invoke-virtual {v2, v3}, Lcom/smalife/db/entity/UserEntity;->setHight(Ljava/lang/Integer;)V

    .line 138
    const-string v3, "weight"

    invoke-virtual {p1, v3}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 141
    .local v4, "w":J
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 140
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 142
    .local v0, "m":F
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smalife/db/entity/UserEntity;->setWeight(Ljava/lang/Float;)V

    .line 144
    const-string v3, "sex"

    invoke-virtual {p1, v3}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 143
    invoke-virtual {v2, v3}, Lcom/smalife/db/entity/UserEntity;->setSex(Ljava/lang/Integer;)V

    .line 146
    const-string v3, "age"

    invoke-virtual {p1, v3}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 145
    invoke-virtual {v2, v3}, Lcom/smalife/db/entity/UserEntity;->setAge(Ljava/lang/Integer;)V

    .line 148
    const-string v3, "header_url"

    invoke-virtual {p1, v3}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 147
    invoke-virtual {v2, v3}, Lcom/smalife/db/entity/UserEntity;->setHeader_url(Ljava/lang/String;)V

    .line 150
    const-string v3, "nickName"

    invoke-virtual {p1, v3}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 149
    invoke-virtual {v2, v3}, Lcom/smalife/db/entity/UserEntity;->setNickName(Ljava/lang/String;)V

    .line 151
    iget-object v3, p0, Lcom/smalife/activity/LeadingActivity$1$1$1;->this$2:Lcom/smalife/activity/LeadingActivity$1$1;

    invoke-static {v3}, Lcom/smalife/activity/LeadingActivity$1$1;->access$1(Lcom/smalife/activity/LeadingActivity$1$1;)Lcom/smalife/activity/LeadingActivity$1;

    move-result-object v3

    invoke-static {v3}, Lcom/smalife/activity/LeadingActivity$1;->access$0(Lcom/smalife/activity/LeadingActivity$1;)Lcom/smalife/activity/LeadingActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/smalife/activity/LeadingActivity;->access$3(Lcom/smalife/activity/LeadingActivity;)Lcom/smalife/db/SmaDao;

    move-result-object v3

    .line 152
    iget-object v6, p0, Lcom/smalife/activity/LeadingActivity$1$1$1;->this$2:Lcom/smalife/activity/LeadingActivity$1$1;

    invoke-static {v6}, Lcom/smalife/activity/LeadingActivity$1$1;->access$1(Lcom/smalife/activity/LeadingActivity$1$1;)Lcom/smalife/activity/LeadingActivity$1;

    move-result-object v6

    invoke-static {v6}, Lcom/smalife/activity/LeadingActivity$1;->access$0(Lcom/smalife/activity/LeadingActivity$1;)Lcom/smalife/activity/LeadingActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/smalife/activity/LeadingActivity;->access$1(Lcom/smalife/activity/LeadingActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/smalife/db/SmaDao;->checkUserExist(Ljava/lang/String;)I

    move-result v1

    .line 153
    .local v1, "rt":I
    if-lez v1, :cond_1

    .line 154
    iget-object v3, p0, Lcom/smalife/activity/LeadingActivity$1$1$1;->this$2:Lcom/smalife/activity/LeadingActivity$1$1;

    invoke-static {v3}, Lcom/smalife/activity/LeadingActivity$1$1;->access$1(Lcom/smalife/activity/LeadingActivity$1$1;)Lcom/smalife/activity/LeadingActivity$1;

    move-result-object v3

    invoke-static {v3}, Lcom/smalife/activity/LeadingActivity$1;->access$0(Lcom/smalife/activity/LeadingActivity$1;)Lcom/smalife/activity/LeadingActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/smalife/activity/LeadingActivity;->access$3(Lcom/smalife/activity/LeadingActivity;)Lcom/smalife/db/SmaDao;

    move-result-object v3

    .line 155
    iget-object v6, p0, Lcom/smalife/activity/LeadingActivity$1$1$1;->this$2:Lcom/smalife/activity/LeadingActivity$1$1;

    invoke-static {v6}, Lcom/smalife/activity/LeadingActivity$1$1;->access$1(Lcom/smalife/activity/LeadingActivity$1$1;)Lcom/smalife/activity/LeadingActivity$1;

    move-result-object v6

    invoke-static {v6}, Lcom/smalife/activity/LeadingActivity$1;->access$0(Lcom/smalife/activity/LeadingActivity$1;)Lcom/smalife/activity/LeadingActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/smalife/activity/LeadingActivity;->access$1(Lcom/smalife/activity/LeadingActivity;)Ljava/lang/String;

    move-result-object v6

    .line 156
    const/4 v7, 0x1

    .line 154
    invoke-virtual {v3, v6, v2, v7}, Lcom/smalife/db/SmaDao;->modifyUserInfo(Ljava/lang/String;Lcom/smalife/db/entity/UserEntity;I)Z

    .line 157
    iget-object v3, p0, Lcom/smalife/activity/LeadingActivity$1$1$1;->this$2:Lcom/smalife/activity/LeadingActivity$1$1;

    invoke-static {v3}, Lcom/smalife/activity/LeadingActivity$1$1;->access$1(Lcom/smalife/activity/LeadingActivity$1$1;)Lcom/smalife/activity/LeadingActivity$1;

    move-result-object v3

    invoke-static {v3}, Lcom/smalife/activity/LeadingActivity$1;->access$0(Lcom/smalife/activity/LeadingActivity$1;)Lcom/smalife/activity/LeadingActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/smalife/activity/LeadingActivity;->access$3(Lcom/smalife/activity/LeadingActivity;)Lcom/smalife/db/SmaDao;

    move-result-object v3

    .line 158
    iget-object v6, p0, Lcom/smalife/activity/LeadingActivity$1$1$1;->this$2:Lcom/smalife/activity/LeadingActivity$1$1;

    invoke-static {v6}, Lcom/smalife/activity/LeadingActivity$1$1;->access$1(Lcom/smalife/activity/LeadingActivity$1$1;)Lcom/smalife/activity/LeadingActivity$1;

    move-result-object v6

    invoke-static {v6}, Lcom/smalife/activity/LeadingActivity$1;->access$0(Lcom/smalife/activity/LeadingActivity$1;)Lcom/smalife/activity/LeadingActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/smalife/activity/LeadingActivity;->access$1(Lcom/smalife/activity/LeadingActivity;)Ljava/lang/String;

    move-result-object v6

    .line 160
    const-string v7, "steps_Aim"

    invoke-virtual {p1, v7}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    long-to-int v7, v8

    .line 157
    invoke-virtual {v3, v6, v7, v2}, Lcom/smalife/db/SmaDao;->syncAimStep(Ljava/lang/String;ILcom/smalife/db/entity/UserEntity;)V

    .line 166
    .end local v0    # "m":F
    .end local v1    # "rt":I
    .end local v4    # "w":J
    :cond_0
    :goto_0
    return-void

    .line 163
    .restart local v0    # "m":F
    .restart local v1    # "rt":I
    .restart local v4    # "w":J
    :cond_1
    iget-object v3, p0, Lcom/smalife/activity/LeadingActivity$1$1$1;->this$2:Lcom/smalife/activity/LeadingActivity$1$1;

    invoke-static {v3}, Lcom/smalife/activity/LeadingActivity$1$1;->access$1(Lcom/smalife/activity/LeadingActivity$1$1;)Lcom/smalife/activity/LeadingActivity$1;

    move-result-object v3

    invoke-static {v3}, Lcom/smalife/activity/LeadingActivity$1;->access$0(Lcom/smalife/activity/LeadingActivity$1;)Lcom/smalife/activity/LeadingActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/smalife/activity/LeadingActivity;->access$3(Lcom/smalife/activity/LeadingActivity;)Lcom/smalife/db/SmaDao;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/smalife/db/SmaDao;->addUser(Lcom/smalife/db/entity/UserEntity;)V

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/accloud/service/ACObject;

    invoke-virtual {p0, p1}, Lcom/smalife/activity/LeadingActivity$1$1$1;->success(Lcom/accloud/service/ACObject;)V

    return-void
.end method
