.class Lcom/smalife/activity/LoginActivity$2$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/accloud/cloudservice/VoidCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/LoginActivity$2;->success(Lcom/accloud/service/ACUserInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smalife/activity/LoginActivity$2;


# direct methods
.method constructor <init>(Lcom/smalife/activity/LoginActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/LoginActivity$2$1;->this$1:Lcom/smalife/activity/LoginActivity$2;

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 0
    .param p1, "arg0"    # Lcom/accloud/service/ACException;

    .prologue
    .line 441
    return-void
.end method

.method public success()V
    .locals 4

    .prologue
    .line 433
    iget-object v0, p0, Lcom/smalife/activity/LoginActivity$2$1;->this$1:Lcom/smalife/activity/LoginActivity$2;

    invoke-static {v0}, Lcom/smalife/activity/LoginActivity$2;->access$1(Lcom/smalife/activity/LoginActivity$2;)Lcom/smalife/activity/LoginActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/smalife/activity/LoginActivity;->access$3(Lcom/smalife/activity/LoginActivity;)Lcom/smalife/MyApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/smalife/activity/LoginActivity$2$1;->this$1:Lcom/smalife/activity/LoginActivity$2;

    invoke-static {v1}, Lcom/smalife/activity/LoginActivity$2;->access$1(Lcom/smalife/activity/LoginActivity$2;)Lcom/smalife/activity/LoginActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/smalife/activity/LoginActivity;->access$2(Lcom/smalife/activity/LoginActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/smalife/MyApplication;->editAlias_ID(J)V

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6dfb\u52a0\u522b\u540d\u6210\u529f: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/smalife/activity/LoginActivity$2$1;->this$1:Lcom/smalife/activity/LoginActivity$2;

    invoke-static {v1}, Lcom/smalife/activity/LoginActivity$2;->access$1(Lcom/smalife/activity/LoginActivity$2;)Lcom/smalife/activity/LoginActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/smalife/activity/LoginActivity;->access$2(Lcom/smalife/activity/LoginActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\u522b\u540d \uff1a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 435
    iget-object v1, p0, Lcom/smalife/activity/LoginActivity$2$1;->this$1:Lcom/smalife/activity/LoginActivity$2;

    invoke-static {v1}, Lcom/smalife/activity/LoginActivity$2;->access$1(Lcom/smalife/activity/LoginActivity$2;)Lcom/smalife/activity/LoginActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/smalife/activity/LoginActivity;->access$3(Lcom/smalife/activity/LoginActivity;)Lcom/smalife/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getAliasID()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 434
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 436
    return-void
.end method
