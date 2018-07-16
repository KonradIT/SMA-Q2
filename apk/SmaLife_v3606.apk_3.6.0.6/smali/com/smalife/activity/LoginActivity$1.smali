.class Lcom/smalife/activity/LoginActivity$1;
.super Landroid/os/Handler;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/LoginActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/LoginActivity$1;->this$0:Lcom/smalife/activity/LoginActivity;

    .line 166
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x0

    .line 169
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 170
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 290
    :goto_0
    :pswitch_0
    return-void

    .line 172
    :pswitch_1
    iget-object v7, p0, Lcom/smalife/activity/LoginActivity$1;->this$0:Lcom/smalife/activity/LoginActivity;

    new-instance v8, Landroid/content/Intent;

    iget-object v9, p0, Lcom/smalife/activity/LoginActivity$1;->this$0:Lcom/smalife/activity/LoginActivity;

    const-class v10, Lcom/smalife/activity/MainActivity;

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v7, v8}, Lcom/smalife/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 173
    iget-object v7, p0, Lcom/smalife/activity/LoginActivity$1;->this$0:Lcom/smalife/activity/LoginActivity;

    invoke-virtual {v7}, Lcom/smalife/activity/LoginActivity;->finish()V

    goto :goto_0

    .line 177
    :pswitch_2
    iget-object v7, p0, Lcom/smalife/activity/LoginActivity$1;->this$0:Lcom/smalife/activity/LoginActivity;

    const v8, 0x7f09019f

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    .line 178
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 182
    :pswitch_3
    iget-object v7, p0, Lcom/smalife/activity/LoginActivity$1;->this$0:Lcom/smalife/activity/LoginActivity;

    const v8, 0x7f0901a0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    .line 183
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 187
    :pswitch_4
    iget-object v7, p0, Lcom/smalife/activity/LoginActivity$1;->this$0:Lcom/smalife/activity/LoginActivity;

    const v8, 0x7f0901a1

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    .line 188
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 189
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    .line 199
    .local v3, "objs":[Ljava/lang/Object;
    aget-object v4, v3, v9

    check-cast v4, Lcn/sharesdk/framework/Platform;

    .line 200
    .local v4, "p":Lcn/sharesdk/framework/Platform;
    invoke-virtual {v4}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    .line 201
    .local v0, "db":Lcn/sharesdk/framework/PlatformDb;
    const/4 v1, 0x0

    .line 203
    .local v1, "mAcThirdPlatform":Lcom/accloud/service/ACThirdPlatform;
    const-string v5, ""

    .line 204
    .local v5, "user_id":Ljava/lang/String;
    const-string v6, ""

    .line 205
    .local v6, "user_token":Ljava/lang/String;
    const-string v2, ""

    .line 233
    .local v2, "nickName":Ljava/lang/String;
    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v5

    .line 234
    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v6

    .line 235
    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getUserName()Ljava/lang/String;

    move-result-object v2

    .line 285
    iget-object v7, p0, Lcom/smalife/activity/LoginActivity$1;->this$0:Lcom/smalife/activity/LoginActivity;

    invoke-static {v7, v1, v5, v2, v6}, Lcom/smalife/activity/LoginActivity;->access$0(Lcom/smalife/activity/LoginActivity;Lcom/accloud/service/ACThirdPlatform;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
