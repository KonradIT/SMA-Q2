.class final Lcom/MURATA/smartConfig$eachConfigTask;
.super Ljava/util/TimerTask;
.source "smartConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/MURATA/smartConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "eachConfigTask"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/MURATA/smartConfig$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/MURATA/smartConfig$1;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/MURATA/smartConfig$eachConfigTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 47
    const-string v0, "eachConfigTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "starConfigEach****"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/MURATA/smartConfig;->access$000()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    sget-object v0, Lcom/MURATA/smartConfig;->SsidStr:Ljava/lang/String;

    sget-object v1, Lcom/MURATA/smartConfig;->PswdStr:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/MURATA/smartConfig;->starConfigEach(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/MURATA/smartConfig;->access$008()I

    .line 50
    return-void
.end method
