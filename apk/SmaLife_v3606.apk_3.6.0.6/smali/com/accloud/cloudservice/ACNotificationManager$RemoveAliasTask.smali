.class Lcom/accloud/cloudservice/ACNotificationManager$RemoveAliasTask;
.super Landroid/os/AsyncTask;
.source "ACNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/accloud/cloudservice/ACNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RemoveAliasTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field alias:Ljava/lang/String;

.field aliasType:Ljava/lang/String;

.field callback:Lcom/accloud/cloudservice/VoidCallback;

.field final synthetic this$0:Lcom/accloud/cloudservice/ACNotificationManager;


# direct methods
.method public constructor <init>(Lcom/accloud/cloudservice/ACNotificationManager;Ljava/lang/String;Ljava/lang/String;Lcom/accloud/cloudservice/VoidCallback;)V
    .locals 0
    .param p2, "aliasString"    # Ljava/lang/String;
    .param p3, "aliasTypeString"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/accloud/cloudservice/VoidCallback;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/accloud/cloudservice/ACNotificationManager$RemoveAliasTask;->this$0:Lcom/accloud/cloudservice/ACNotificationManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 102
    iput-object p2, p0, Lcom/accloud/cloudservice/ACNotificationManager$RemoveAliasTask;->alias:Ljava/lang/String;

    .line 103
    iput-object p3, p0, Lcom/accloud/cloudservice/ACNotificationManager$RemoveAliasTask;->aliasType:Ljava/lang/String;

    .line 104
    iput-object p4, p0, Lcom/accloud/cloudservice/ACNotificationManager$RemoveAliasTask;->callback:Lcom/accloud/cloudservice/VoidCallback;

    .line 105
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/accloud/cloudservice/ACNotificationManager$RemoveAliasTask;->this$0:Lcom/accloud/cloudservice/ACNotificationManager;

    invoke-static {v1}, Lcom/accloud/cloudservice/ACNotificationManager;->access$000(Lcom/accloud/cloudservice/ACNotificationManager;)Lcom/umeng/message/PushAgent;

    move-result-object v1

    iget-object v2, p0, Lcom/accloud/cloudservice/ACNotificationManager$RemoveAliasTask;->alias:Ljava/lang/String;

    iget-object v3, p0, Lcom/accloud/cloudservice/ACNotificationManager$RemoveAliasTask;->aliasType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/umeng/message/PushAgent;->removeAlias(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 113
    :goto_0
    return-object v1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/accloud/cloudservice/ACNotificationManager$RemoveAliasTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 118
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/accloud/cloudservice/ACNotificationManager$RemoveAliasTask;->callback:Lcom/accloud/cloudservice/VoidCallback;

    invoke-interface {v0}, Lcom/accloud/cloudservice/VoidCallback;->success()V

    .line 122
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/accloud/cloudservice/ACNotificationManager$RemoveAliasTask;->callback:Lcom/accloud/cloudservice/VoidCallback;

    new-instance v1, Lcom/accloud/service/ACException;

    sget v2, Lcom/accloud/service/ACException;->INTERNET_ERROR:I

    const-string v3, "\u5220\u9664\u522b\u540d\u5931\u8d25"

    invoke-direct {v1, v2, v3}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 94
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/accloud/cloudservice/ACNotificationManager$RemoveAliasTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
