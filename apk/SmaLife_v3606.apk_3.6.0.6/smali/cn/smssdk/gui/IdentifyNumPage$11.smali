.class Lcn/smssdk/gui/IdentifyNumPage$11;
.super Ljava/lang/Object;
.source "IdentifyNumPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/IdentifyNumPage;->afterGetVoice(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/smssdk/gui/IdentifyNumPage;

.field private final synthetic val$data:Ljava/lang/Object;

.field private final synthetic val$result:I


# direct methods
.method constructor <init>(Lcn/smssdk/gui/IdentifyNumPage;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage$11;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    iput p2, p0, Lcn/smssdk/gui/IdentifyNumPage$11;->val$result:I

    iput-object p3, p0, Lcn/smssdk/gui/IdentifyNumPage$11;->val$data:Ljava/lang/Object;

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 469
    iget-object v5, p0, Lcn/smssdk/gui/IdentifyNumPage$11;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v5}, Lcn/smssdk/gui/IdentifyNumPage;->access$10(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Dialog;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcn/smssdk/gui/IdentifyNumPage$11;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v5}, Lcn/smssdk/gui/IdentifyNumPage;->access$10(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 470
    iget-object v5, p0, Lcn/smssdk/gui/IdentifyNumPage$11;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v5}, Lcn/smssdk/gui/IdentifyNumPage;->access$10(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 473
    :cond_0
    iget v5, p0, Lcn/smssdk/gui/IdentifyNumPage$11;->val$result:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 474
    iget-object v5, p0, Lcn/smssdk/gui/IdentifyNumPage$11;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v5}, Lcn/smssdk/gui/IdentifyNumPage;->access$6(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Activity;

    move-result-object v5

    const-string v6, "smssdk_send_sounds_success"

    invoke-static {v5, v6}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 475
    .local v3, "resId":I
    if-lez v3, :cond_1

    .line 476
    iget-object v5, p0, Lcn/smssdk/gui/IdentifyNumPage$11;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v5}, Lcn/smssdk/gui/IdentifyNumPage;->access$6(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 478
    :cond_1
    iget-object v5, p0, Lcn/smssdk/gui/IdentifyNumPage$11;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v5}, Lcn/smssdk/gui/IdentifyNumPage;->access$8(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/widget/Button;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 501
    .end local v3    # "resId":I
    :cond_2
    :goto_0
    return-void

    .line 480
    :cond_3
    iget-object v5, p0, Lcn/smssdk/gui/IdentifyNumPage$11;->val$data:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 481
    iget-object v4, p0, Lcn/smssdk/gui/IdentifyNumPage$11;->val$data:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Throwable;

    .line 484
    .local v4, "throwable":Ljava/lang/Throwable;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 485
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 484
    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 486
    .local v2, "object":Lorg/json/JSONObject;
    const-string v5, "detail"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "des":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 488
    iget-object v5, p0, Lcn/smssdk/gui/IdentifyNumPage$11;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v5}, Lcn/smssdk/gui/IdentifyNumPage;->access$6(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 491
    .end local v0    # "des":Ljava/lang/String;
    .end local v2    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 492
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 495
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_4
    iget-object v5, p0, Lcn/smssdk/gui/IdentifyNumPage$11;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v5}, Lcn/smssdk/gui/IdentifyNumPage;->access$6(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Activity;

    move-result-object v5

    const-string v6, "smssdk_network_error"

    invoke-static {v5, v6}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 496
    .restart local v3    # "resId":I
    if-lez v3, :cond_2

    .line 497
    iget-object v5, p0, Lcn/smssdk/gui/IdentifyNumPage$11;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v5}, Lcn/smssdk/gui/IdentifyNumPage;->access$6(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
