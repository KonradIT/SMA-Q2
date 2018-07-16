.class Lcom/smalife/activity/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/accloud/cloudservice/VoidCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/MainActivity;->uploadCrashLogToAC()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/MainActivity$6;->this$0:Lcom/smalife/activity/MainActivity;

    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 3
    .param p1, "arg0"    # Lcom/accloud/service/ACException;

    .prologue
    .line 632
    const-string v0, "UpLoadCrashLog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "candice upload error,errorcode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 632
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    return-void
.end method

.method public success()V
    .locals 2

    .prologue
    .line 625
    const-string v0, "UpLoadCrashLog"

    const-string v1, "candice upload success"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v0, p0, Lcom/smalife/activity/MainActivity$6;->this$0:Lcom/smalife/activity/MainActivity;

    invoke-static {v0}, Lcom/smalife/activity/MainActivity;->access$3(Lcom/smalife/activity/MainActivity;)Lcom/smalife/MyApplication;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/smalife/MyApplication;->editCrashLogUrl(Ljava/lang/String;)V

    .line 628
    return-void
.end method
