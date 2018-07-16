.class Lcn/smssdk/gui/IdentifyNumPage$10;
.super Ljava/lang/Object;
.source "IdentifyNumPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/IdentifyNumPage;->afterGet(ILjava/lang/Object;)V
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
    iput-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage$10;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    iput p2, p0, Lcn/smssdk/gui/IdentifyNumPage$10;->val$result:I

    iput-object p3, p0, Lcn/smssdk/gui/IdentifyNumPage$10;->val$data:Ljava/lang/Object;

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 417
    iget-object v6, p0, Lcn/smssdk/gui/IdentifyNumPage$10;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v6}, Lcn/smssdk/gui/IdentifyNumPage;->access$10(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Dialog;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcn/smssdk/gui/IdentifyNumPage$10;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v6}, Lcn/smssdk/gui/IdentifyNumPage;->access$10(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 418
    iget-object v6, p0, Lcn/smssdk/gui/IdentifyNumPage$10;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v6}, Lcn/smssdk/gui/IdentifyNumPage;->access$10(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    .line 421
    :cond_0
    iget v6, p0, Lcn/smssdk/gui/IdentifyNumPage$10;->val$result:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    .line 422
    iget-object v6, p0, Lcn/smssdk/gui/IdentifyNumPage$10;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v6}, Lcn/smssdk/gui/IdentifyNumPage;->access$6(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Activity;

    move-result-object v6

    .line 423
    const-string v7, "smssdk_virificaition_code_sent"

    .line 422
    invoke-static {v6, v7}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 424
    .local v3, "resId":I
    if-lez v3, :cond_1

    .line 425
    iget-object v6, p0, Lcn/smssdk/gui/IdentifyNumPage$10;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v6}, Lcn/smssdk/gui/IdentifyNumPage;->access$6(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v3, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 427
    :cond_1
    iget-object v6, p0, Lcn/smssdk/gui/IdentifyNumPage$10;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v6}, Lcn/smssdk/gui/IdentifyNumPage;->access$6(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Activity;

    move-result-object v6

    const-string v7, "smssdk_receive_msg"

    invoke-static {v6, v7}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 428
    if-lez v3, :cond_2

    .line 429
    iget-object v6, p0, Lcn/smssdk/gui/IdentifyNumPage$10;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-virtual {v6}, Lcn/smssdk/gui/IdentifyNumPage;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcn/smssdk/gui/IdentifyNumPage$10;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v8}, Lcn/smssdk/gui/IdentifyNumPage;->access$4(Lcn/smssdk/gui/IdentifyNumPage;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 430
    .local v5, "unReceive":Ljava/lang/String;
    iget-object v6, p0, Lcn/smssdk/gui/IdentifyNumPage$10;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v6}, Lcn/smssdk/gui/IdentifyNumPage;->access$7(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/widget/TextView;

    move-result-object v6

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    .end local v5    # "unReceive":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcn/smssdk/gui/IdentifyNumPage$10;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v6}, Lcn/smssdk/gui/IdentifyNumPage;->access$8(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/widget/Button;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 433
    iget-object v6, p0, Lcn/smssdk/gui/IdentifyNumPage$10;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    const/16 v7, 0x3c

    invoke-static {v6, v7}, Lcn/smssdk/gui/IdentifyNumPage;->access$5(Lcn/smssdk/gui/IdentifyNumPage;I)V

    .line 434
    iget-object v6, p0, Lcn/smssdk/gui/IdentifyNumPage$10;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v6}, Lcn/smssdk/gui/IdentifyNumPage;->access$14(Lcn/smssdk/gui/IdentifyNumPage;)V

    .line 456
    .end local v3    # "resId":I
    :cond_3
    :goto_0
    return-void

    .line 436
    :cond_4
    iget-object v6, p0, Lcn/smssdk/gui/IdentifyNumPage$10;->val$data:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 437
    iget-object v4, p0, Lcn/smssdk/gui/IdentifyNumPage$10;->val$data:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Throwable;

    .line 440
    .local v4, "throwable":Ljava/lang/Throwable;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 441
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 440
    invoke-direct {v2, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 442
    .local v2, "object":Lorg/json/JSONObject;
    const-string v6, "detail"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "des":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 444
    iget-object v6, p0, Lcn/smssdk/gui/IdentifyNumPage$10;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v6}, Lcn/smssdk/gui/IdentifyNumPage;->access$6(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 447
    .end local v0    # "des":Ljava/lang/String;
    .end local v2    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 448
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 451
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_5
    iget-object v6, p0, Lcn/smssdk/gui/IdentifyNumPage$10;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v6}, Lcn/smssdk/gui/IdentifyNumPage;->access$6(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Activity;

    move-result-object v6

    const-string v7, "smssdk_network_error"

    invoke-static {v6, v7}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 452
    .restart local v3    # "resId":I
    if-lez v3, :cond_3

    .line 453
    iget-object v6, p0, Lcn/smssdk/gui/IdentifyNumPage$10;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v6}, Lcn/smssdk/gui/IdentifyNumPage;->access$6(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v3, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
