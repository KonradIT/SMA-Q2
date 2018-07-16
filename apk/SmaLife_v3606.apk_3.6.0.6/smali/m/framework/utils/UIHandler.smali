.class public Lm/framework/utils/UIHandler;
.super Ljava/lang/Object;
.source "UIHandler.java"


# static fields
.field private static handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 27
    invoke-static {p0}, Lm/framework/utils/UIHandler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private static getShellMessage(ILandroid/os/Handler$Callback;)Landroid/os/Message;
    .locals 2
    .param p0, "what"    # I
    .param p1, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 43
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 44
    .local v0, "msg":Landroid/os/Message;
    iput p0, v0, Landroid/os/Message;->what:I

    .line 45
    invoke-static {v0, p1}, Lm/framework/utils/UIHandler;->getShellMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method private static getShellMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Landroid/os/Message;
    .locals 3
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 37
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 38
    .local v0, "shell":Landroid/os/Message;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 39
    return-object v0
.end method

.method private static handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p0, "msg"    # Landroid/os/Message;

    .prologue
    .line 28
    iget-object v2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 29
    .local v2, "objs":[Ljava/lang/Object;
    const/4 v3, 0x0

    aget-object v1, v2, v3

    check-cast v1, Landroid/os/Message;

    .line 30
    .local v1, "inner":Landroid/os/Message;
    const/4 v3, 0x1

    aget-object v0, v2, v3

    check-cast v0, Landroid/os/Handler$Callback;

    .line 31
    .local v0, "callback":Landroid/os/Handler$Callback;
    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v0, v1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    .line 34
    :cond_0
    return-void
.end method

.method public static prepare()V
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lm/framework/utils/UIHandler;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lm/framework/utils/UIHandler$1;

    invoke-direct {v1}, Lm/framework/utils/UIHandler$1;-><init>()V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    sput-object v0, Lm/framework/utils/UIHandler;->handler:Landroid/os/Handler;

    .line 25
    :cond_0
    return-void
.end method

.method public static sendEmptyMessage(ILandroid/os/Handler$Callback;)Z
    .locals 2
    .param p0, "what"    # I
    .param p1, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 65
    sget-object v0, Lm/framework/utils/UIHandler;->handler:Landroid/os/Handler;

    invoke-static {p0, p1}, Lm/framework/utils/UIHandler;->getShellMessage(ILandroid/os/Handler$Callback;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public static sendEmptyMessageAtTime(IJLandroid/os/Handler$Callback;)Z
    .locals 3
    .param p0, "what"    # I
    .param p1, "uptimeMillis"    # J
    .param p3, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 69
    sget-object v0, Lm/framework/utils/UIHandler;->handler:Landroid/os/Handler;

    invoke-static {p0, p3}, Lm/framework/utils/UIHandler;->getShellMessage(ILandroid/os/Handler$Callback;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public static sendEmptyMessageDelayed(IJLandroid/os/Handler$Callback;)Z
    .locals 3
    .param p0, "what"    # I
    .param p1, "delayMillis"    # J
    .param p3, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 73
    sget-object v0, Lm/framework/utils/UIHandler;->handler:Landroid/os/Handler;

    invoke-static {p0, p3}, Lm/framework/utils/UIHandler;->getShellMessage(ILandroid/os/Handler$Callback;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public static sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z
    .locals 2
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 49
    sget-object v0, Lm/framework/utils/UIHandler;->handler:Landroid/os/Handler;

    invoke-static {p0, p1}, Lm/framework/utils/UIHandler;->getShellMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public static sendMessageAtFrontOfQueue(Landroid/os/Message;Landroid/os/Handler$Callback;)Z
    .locals 2
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 61
    sget-object v0, Lm/framework/utils/UIHandler;->handler:Landroid/os/Handler;

    invoke-static {p0, p1}, Lm/framework/utils/UIHandler;->getShellMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public static sendMessageAtTime(Landroid/os/Message;JLandroid/os/Handler$Callback;)Z
    .locals 3
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "uptimeMillis"    # J
    .param p3, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 57
    sget-object v0, Lm/framework/utils/UIHandler;->handler:Landroid/os/Handler;

    invoke-static {p0, p3}, Lm/framework/utils/UIHandler;->getShellMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public static sendMessageDelayed(Landroid/os/Message;JLandroid/os/Handler$Callback;)Z
    .locals 3
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "delayMillis"    # J
    .param p3, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 53
    sget-object v0, Lm/framework/utils/UIHandler;->handler:Landroid/os/Handler;

    invoke-static {p0, p3}, Lm/framework/utils/UIHandler;->getShellMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method
