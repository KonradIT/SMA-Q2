.class Lcn/smssdk/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcn/smssdk/a;


# direct methods
.method constructor <init>(Lcn/smssdk/a;)V
    .locals 0

    iput-object p1, p0, Lcn/smssdk/c;->a:Lcn/smssdk/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcn/smssdk/c;->a:Lcn/smssdk/a;

    const/4 v1, 0x7

    const/4 v2, -0x1

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcn/smssdk/a;->a(Lcn/smssdk/a;IILjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
