.class Lcom/accloud/cloudservice/ACBindManager$15;
.super Ljava/lang/Object;
.source "ACBindManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/ACMsgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACBindManager;->resetDeviceToken(Ljava/lang/String;JLcom/accloud/cloudservice/VoidCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/accloud/cloudservice/ACBindManager;

.field final synthetic val$callback:Lcom/accloud/cloudservice/VoidCallback;


# direct methods
.method constructor <init>(Lcom/accloud/cloudservice/ACBindManager;Lcom/accloud/cloudservice/VoidCallback;)V
    .locals 0

    .prologue
    .line 803
    iput-object p1, p0, Lcom/accloud/cloudservice/ACBindManager$15;->this$0:Lcom/accloud/cloudservice/ACBindManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACBindManager$15;->val$callback:Lcom/accloud/cloudservice/VoidCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 1
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 823
    iget-object v0, p0, Lcom/accloud/cloudservice/ACBindManager$15;->val$callback:Lcom/accloud/cloudservice/VoidCallback;

    invoke-interface {v0, p1}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    .line 824
    return-void
.end method

.method public finish(Lcom/accloud/service/ACMsg;)V
    .locals 8
    .param p1, "resp"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 806
    invoke-virtual {p1}, Lcom/accloud/service/ACMsg;->isErr()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 807
    iget-object v4, p0, Lcom/accloud/cloudservice/ACBindManager$15;->val$callback:Lcom/accloud/cloudservice/VoidCallback;

    new-instance v5, Lcom/accloud/service/ACException;

    invoke-virtual {p1}, Lcom/accloud/service/ACMsg;->getErrCode()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "error"

    invoke-virtual {p1, v7}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    .line 819
    :goto_0
    return-void

    .line 809
    :cond_0
    const-string v4, "deviceId"

    invoke-virtual {p1, v4}, Lcom/accloud/service/ACMsg;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 810
    .local v2, "deviceId":J
    const-string v4, "aesKey"

    invoke-virtual {p1, v4}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 812
    .local v0, "aesKey":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v4, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v5, "ablecloud_privatedevices_num"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/accloud/utils/PreferencesUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 813
    sget-object v4, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ablecloud_privatedevice"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_deviceId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/accloud/utils/PreferencesUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 814
    sget-object v4, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ablecloud_privatedevice"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_aesKey"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/accloud/utils/PreferencesUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 812
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 817
    :cond_2
    iget-object v4, p0, Lcom/accloud/cloudservice/ACBindManager$15;->val$callback:Lcom/accloud/cloudservice/VoidCallback;

    invoke-interface {v4}, Lcom/accloud/cloudservice/VoidCallback;->success()V

    goto :goto_0
.end method
