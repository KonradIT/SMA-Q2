.class Lcn/smssdk/a/c;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcn/smssdk/a/b;


# direct methods
.method constructor <init>(Lcn/smssdk/a/b;)V
    .locals 0

    iput-object p1, p0, Lcn/smssdk/a/c;->a:Lcn/smssdk/a/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcn/smssdk/a/c;->a:Lcn/smssdk/a/b;

    invoke-virtual {v0}, Lcn/smssdk/a/b;->a()I

    move-result v0

    iget-object v1, p0, Lcn/smssdk/a/c;->a:Lcn/smssdk/a/b;

    invoke-static {v1}, Lcn/smssdk/a/b;->a(Lcn/smssdk/a/b;)Landroid/os/Handler$Callback;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iget-object v2, p0, Lcn/smssdk/a/c;->a:Lcn/smssdk/a/b;

    invoke-static {v2}, Lcn/smssdk/a/b;->b(Lcn/smssdk/a/b;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->what:I

    iput v0, v1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcn/smssdk/a/c;->a:Lcn/smssdk/a/b;

    invoke-static {v0}, Lcn/smssdk/a/b;->a(Lcn/smssdk/a/b;)Landroid/os/Handler$Callback;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/mob/tools/utils/Ln;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method
