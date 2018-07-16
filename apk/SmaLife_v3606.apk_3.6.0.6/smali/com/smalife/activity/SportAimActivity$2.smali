.class Lcom/smalife/activity/SportAimActivity$2;
.super Ljava/lang/Object;
.source "SportAimActivity.java"

# interfaces
.implements Lcom/accloud/cloudservice/VoidCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/SportAimActivity;->syncAim(Lcom/accloud/service/ACObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/SportAimActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/SportAimActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/SportAimActivity$2;->this$0:Lcom/smalife/activity/SportAimActivity;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 0
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 238
    return-void
.end method

.method public success()V
    .locals 2

    .prologue
    .line 232
    const-string v0, "ljh"

    const-string v1, "sync sport aim successful"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void
.end method
