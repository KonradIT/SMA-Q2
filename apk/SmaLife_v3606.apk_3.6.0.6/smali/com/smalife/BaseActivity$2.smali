.class Lcom/smalife/BaseActivity$2;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/BaseActivity;


# direct methods
.method constructor <init>(Lcom/smalife/BaseActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/BaseActivity$2;->this$0:Lcom/smalife/BaseActivity;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 2
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "arg1"    # I

    .prologue
    .line 247
    iget-object v0, p0, Lcom/smalife/BaseActivity$2;->this$0:Lcom/smalife/BaseActivity;

    invoke-static {v0}, Lcom/smalife/BaseActivity;->access$0(Lcom/smalife/BaseActivity;)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 248
    iget-object v0, p0, Lcom/smalife/BaseActivity$2;->this$0:Lcom/smalife/BaseActivity;

    invoke-static {v0}, Lcom/smalife/BaseActivity;->access$0(Lcom/smalife/BaseActivity;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/smalife/BaseActivity$2;->this$0:Lcom/smalife/BaseActivity;

    invoke-static {v0, v1}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    .line 249
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 2
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "arg1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p3, "arg2":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/smalife/BaseActivity$2;->this$0:Lcom/smalife/BaseActivity;

    invoke-static {v0}, Lcom/smalife/BaseActivity;->access$0(Lcom/smalife/BaseActivity;)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 242
    iget-object v0, p0, Lcom/smalife/BaseActivity$2;->this$0:Lcom/smalife/BaseActivity;

    invoke-static {v0}, Lcom/smalife/BaseActivity;->access$0(Lcom/smalife/BaseActivity;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/smalife/BaseActivity$2;->this$0:Lcom/smalife/BaseActivity;

    invoke-static {v0, v1}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    .line 243
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 2
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "arg1"    # I
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/smalife/BaseActivity$2;->this$0:Lcom/smalife/BaseActivity;

    invoke-static {v0}, Lcom/smalife/BaseActivity;->access$0(Lcom/smalife/BaseActivity;)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 235
    iget-object v0, p0, Lcom/smalife/BaseActivity$2;->this$0:Lcom/smalife/BaseActivity;

    invoke-static {v0}, Lcom/smalife/BaseActivity;->access$0(Lcom/smalife/BaseActivity;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/smalife/BaseActivity$2;->this$0:Lcom/smalife/BaseActivity;

    invoke-static {v0, v1}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    .line 236
    return-void
.end method
