.class Lcom/smalife/utils/CrashHandler$1;
.super Ljava/lang/Thread;
.source "CrashHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/utils/CrashHandler;->handleException(Ljava/lang/Throwable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/utils/CrashHandler;


# direct methods
.method constructor <init>(Lcom/smalife/utils/CrashHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/utils/CrashHandler$1;->this$0:Lcom/smalife/utils/CrashHandler;

    .line 122
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 125
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 127
    iget-object v0, p0, Lcom/smalife/utils/CrashHandler$1;->this$0:Lcom/smalife/utils/CrashHandler;

    invoke-static {v0}, Lcom/smalife/utils/CrashHandler;->access$0(Lcom/smalife/utils/CrashHandler;)Landroid/content/Context;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/smalife/utils/CrashHandler$1;->this$0:Lcom/smalife/utils/CrashHandler;

    invoke-static {v1}, Lcom/smalife/utils/CrashHandler;->access$0(Lcom/smalife/utils/CrashHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 129
    const v2, 0x7f090206

    .line 128
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 129
    const/4 v2, 0x0

    .line 126
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 131
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 132
    return-void
.end method
