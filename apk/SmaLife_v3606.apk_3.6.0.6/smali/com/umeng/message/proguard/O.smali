.class public Lcom/umeng/message/proguard/O;
.super Ljava/lang/Object;
.source "UTMCSendLogDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/message/proguard/O$a;
    }
.end annotation


# instance fields
.field private a:Landroid/os/HandlerThread;

.field private b:Landroid/os/Handler;

.field private c:Lcom/umeng/message/proguard/O$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/umeng/message/proguard/O;->a:Landroid/os/HandlerThread;

    .line 15
    iput-object v0, p0, Lcom/umeng/message/proguard/O;->b:Landroid/os/Handler;

    .line 16
    iput-object v0, p0, Lcom/umeng/message/proguard/O;->c:Lcom/umeng/message/proguard/O$a;

    .line 19
    return-void
.end method

.method static synthetic a(Lcom/umeng/message/proguard/O;)Lcom/umeng/message/proguard/O$a;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/umeng/message/proguard/O;->c:Lcom/umeng/message/proguard/O$a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ut"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/message/proguard/O;->a:Landroid/os/HandlerThread;

    .line 23
    iget-object v0, p0, Lcom/umeng/message/proguard/O;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 24
    new-instance v0, Lcom/umeng/message/proguard/O$1;

    iget-object v1, p0, Lcom/umeng/message/proguard/O;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/umeng/message/proguard/O$1;-><init>(Lcom/umeng/message/proguard/O;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/umeng/message/proguard/O;->b:Landroid/os/Handler;

    .line 39
    return-void
.end method

.method public a(Lcom/umeng/message/proguard/O$a;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/umeng/message/proguard/O;->c:Lcom/umeng/message/proguard/O$a;

    .line 43
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    if-eqz p1, :cond_0

    .line 51
    const-string v0, "_sls"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    const-string v0, "_sls"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/umeng/message/proguard/O;->c:Lcom/umeng/message/proguard/O$a;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/umeng/message/proguard/O;->c:Lcom/umeng/message/proguard/O$a;

    invoke-interface {v0, p1}, Lcom/umeng/message/proguard/O$a;->b(Ljava/util/Map;)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 64
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 65
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 66
    iget-object v1, p0, Lcom/umeng/message/proguard/O;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
