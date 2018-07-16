.class Lm/framework/utils/UIHandler$1;
.super Ljava/lang/Object;
.source "UIHandler.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/framework/utils/UIHandler;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 20
    invoke-static {p1}, Lm/framework/utils/UIHandler;->access$0(Landroid/os/Message;)V

    .line 21
    const/4 v0, 0x0

    return v0
.end method
