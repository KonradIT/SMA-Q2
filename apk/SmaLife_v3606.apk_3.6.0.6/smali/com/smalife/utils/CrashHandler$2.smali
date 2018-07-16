.class Lcom/smalife/utils/CrashHandler$2;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Lcom/accloud/cloudservice/VoidCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/utils/CrashHandler;->uploadCrashLogToAC()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/utils/CrashHandler;

.field private final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/smalife/utils/CrashHandler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/utils/CrashHandler$2;->this$0:Lcom/smalife/utils/CrashHandler;

    iput-object p2, p0, Lcom/smalife/utils/CrashHandler$2;->val$filePath:Ljava/lang/String;

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 3
    .param p1, "arg0"    # Lcom/accloud/service/ACException;

    .prologue
    .line 307
    const-string v0, "Crash"

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "upload error,errorcode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 307
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-void
.end method

.method public success()V
    .locals 2

    .prologue
    .line 301
    const-string v0, "Crash"

    const-string v1, "upload success"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/smalife/utils/CrashHandler$2;->val$filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/smalife/utils/FileHelper;->delFolder(Ljava/lang/String;)V

    .line 303
    return-void
.end method
