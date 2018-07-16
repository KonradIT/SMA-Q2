.class Lcom/smalife/activity/UserInfoActivity$Mycallback;
.super Ljava/lang/Object;
.source "UserInfoActivity.java"

# interfaces
.implements Lcom/accloud/cloudservice/VoidCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/UserInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Mycallback"
.end annotation


# instance fields
.field private ask_type:I

.field final synthetic this$0:Lcom/smalife/activity/UserInfoActivity;


# direct methods
.method public constructor <init>(Lcom/smalife/activity/UserInfoActivity;I)V
    .locals 0
    .param p2, "type"    # I

    .prologue
    .line 373
    iput-object p1, p0, Lcom/smalife/activity/UserInfoActivity$Mycallback;->this$0:Lcom/smalife/activity/UserInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput p2, p0, Lcom/smalife/activity/UserInfoActivity$Mycallback;->ask_type:I

    .line 375
    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 2
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/smalife/activity/UserInfoActivity$Mycallback;->this$0:Lcom/smalife/activity/UserInfoActivity;

    invoke-static {v0}, Lcom/smalife/activity/UserInfoActivity;->access$3(Lcom/smalife/activity/UserInfoActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 380
    return-void
.end method

.method public success()V
    .locals 2

    .prologue
    .line 384
    iget v0, p0, Lcom/smalife/activity/UserInfoActivity$Mycallback;->ask_type:I

    packed-switch v0, :pswitch_data_0

    .line 389
    :goto_0
    return-void

    .line 386
    :pswitch_0
    iget-object v0, p0, Lcom/smalife/activity/UserInfoActivity$Mycallback;->this$0:Lcom/smalife/activity/UserInfoActivity;

    invoke-static {v0}, Lcom/smalife/activity/UserInfoActivity;->access$3(Lcom/smalife/activity/UserInfoActivity;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/smalife/activity/UserInfoActivity$Mycallback;->ask_type:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 384
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
