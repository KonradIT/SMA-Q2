.class Lcom/smalife/PushReceiver$1;
.super Ljava/lang/Object;
.source "PushReceiver.java"

# interfaces
.implements Lcom/accloud/cloudservice/VoidCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/PushReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/PushReceiver;

.field private final synthetic val$client_id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/smalife/PushReceiver;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/PushReceiver$1;->this$0:Lcom/smalife/PushReceiver;

    iput-object p2, p0, Lcom/smalife/PushReceiver$1;->val$client_id:Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 0
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 57
    return-void
.end method

.method public success()V
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/smalife/PushReceiver$1;->this$0:Lcom/smalife/PushReceiver;

    iget-object v0, v0, Lcom/smalife/PushReceiver;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_login"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 52
    const-string v0, "ljh"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6210\u529f\u83b7\u53d6client_id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/smalife/PushReceiver$1;->val$client_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method
