.class public Lcn/smssdk/ReflectableEnventHandler;
.super Lcn/smssdk/EventHandler;


# instance fields
.field private a:I

.field private b:Landroid/os/Handler$Callback;

.field private c:I

.field private d:Landroid/os/Handler$Callback;

.field private e:I

.field private f:Landroid/os/Handler$Callback;

.field private g:I

.field private h:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/smssdk/EventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public afterEvent(IILjava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcn/smssdk/ReflectableEnventHandler;->f:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget v1, p0, Lcn/smssdk/ReflectableEnventHandler;->e:I

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcn/smssdk/ReflectableEnventHandler;->f:Landroid/os/Handler$Callback;

    invoke-interface {v1, v0}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public beforeEvent(ILjava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcn/smssdk/ReflectableEnventHandler;->d:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget v1, p0, Lcn/smssdk/ReflectableEnventHandler;->c:I

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcn/smssdk/ReflectableEnventHandler;->d:Landroid/os/Handler$Callback;

    invoke-interface {v1, v0}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onRegister()V
    .locals 2

    iget-object v0, p0, Lcn/smssdk/ReflectableEnventHandler;->b:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget v1, p0, Lcn/smssdk/ReflectableEnventHandler;->a:I

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcn/smssdk/ReflectableEnventHandler;->b:Landroid/os/Handler$Callback;

    invoke-interface {v1, v0}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onUnregister()V
    .locals 2

    iget-object v0, p0, Lcn/smssdk/ReflectableEnventHandler;->h:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget v1, p0, Lcn/smssdk/ReflectableEnventHandler;->g:I

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcn/smssdk/ReflectableEnventHandler;->h:Landroid/os/Handler$Callback;

    invoke-interface {v1, v0}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public setAfterEventCallback(ILandroid/os/Handler$Callback;)V
    .locals 0

    iput p1, p0, Lcn/smssdk/ReflectableEnventHandler;->e:I

    iput-object p2, p0, Lcn/smssdk/ReflectableEnventHandler;->f:Landroid/os/Handler$Callback;

    return-void
.end method

.method public setBeforeEventCallback(ILandroid/os/Handler$Callback;)V
    .locals 0

    iput p1, p0, Lcn/smssdk/ReflectableEnventHandler;->c:I

    iput-object p2, p0, Lcn/smssdk/ReflectableEnventHandler;->d:Landroid/os/Handler$Callback;

    return-void
.end method

.method public setOnRegisterCallback(ILandroid/os/Handler$Callback;)V
    .locals 0

    iput p1, p0, Lcn/smssdk/ReflectableEnventHandler;->a:I

    iput-object p2, p0, Lcn/smssdk/ReflectableEnventHandler;->b:Landroid/os/Handler$Callback;

    return-void
.end method

.method public setOnUnregisterCallback(ILandroid/os/Handler$Callback;)V
    .locals 0

    iput p1, p0, Lcn/smssdk/ReflectableEnventHandler;->g:I

    iput-object p2, p0, Lcn/smssdk/ReflectableEnventHandler;->h:Landroid/os/Handler$Callback;

    return-void
.end method
