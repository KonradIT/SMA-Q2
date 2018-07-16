.class Lcn/smssdk/gui/RegisterPage$1$1;
.super Ljava/lang/Object;
.source "RegisterPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/RegisterPage$1;->afterEvent(IILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/smssdk/gui/RegisterPage$1;

.field private final synthetic val$data:Ljava/lang/Object;

.field private final synthetic val$event:I

.field private final synthetic val$result:I


# direct methods
.method constructor <init>(Lcn/smssdk/gui/RegisterPage$1;IILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/smssdk/gui/RegisterPage$1$1;->this$1:Lcn/smssdk/gui/RegisterPage$1;

    iput p2, p0, Lcn/smssdk/gui/RegisterPage$1$1;->val$result:I

    iput p3, p0, Lcn/smssdk/gui/RegisterPage$1$1;->val$event:I

    iput-object p4, p0, Lcn/smssdk/gui/RegisterPage$1$1;->val$data:Ljava/lang/Object;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 146
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage$1$1;->this$1:Lcn/smssdk/gui/RegisterPage$1;

    invoke-static {v5}, Lcn/smssdk/gui/RegisterPage$1;->access$0(Lcn/smssdk/gui/RegisterPage$1;)Lcn/smssdk/gui/RegisterPage;

    move-result-object v5

    invoke-static {v5}, Lcn/smssdk/gui/RegisterPage;->access$0(Lcn/smssdk/gui/RegisterPage;)Landroid/app/Dialog;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage$1$1;->this$1:Lcn/smssdk/gui/RegisterPage$1;

    invoke-static {v5}, Lcn/smssdk/gui/RegisterPage$1;->access$0(Lcn/smssdk/gui/RegisterPage$1;)Lcn/smssdk/gui/RegisterPage;

    move-result-object v5

    invoke-static {v5}, Lcn/smssdk/gui/RegisterPage;->access$0(Lcn/smssdk/gui/RegisterPage;)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 147
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage$1$1;->this$1:Lcn/smssdk/gui/RegisterPage$1;

    invoke-static {v5}, Lcn/smssdk/gui/RegisterPage$1;->access$0(Lcn/smssdk/gui/RegisterPage$1;)Lcn/smssdk/gui/RegisterPage;

    move-result-object v5

    invoke-static {v5}, Lcn/smssdk/gui/RegisterPage;->access$0(Lcn/smssdk/gui/RegisterPage;)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 149
    :cond_0
    iget v5, p0, Lcn/smssdk/gui/RegisterPage$1$1;->val$result:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 150
    iget v5, p0, Lcn/smssdk/gui/RegisterPage$1$1;->val$event:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 152
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage$1$1;->this$1:Lcn/smssdk/gui/RegisterPage$1;

    invoke-static {v5}, Lcn/smssdk/gui/RegisterPage$1;->access$0(Lcn/smssdk/gui/RegisterPage$1;)Lcn/smssdk/gui/RegisterPage;

    move-result-object v6

    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage$1$1;->val$data:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-static {v6, v5}, Lcn/smssdk/gui/RegisterPage;->access$1(Lcn/smssdk/gui/RegisterPage;Ljava/util/ArrayList;)V

    .line 188
    :cond_1
    :goto_0
    return-void

    .line 153
    :cond_2
    iget v5, p0, Lcn/smssdk/gui/RegisterPage$1$1;->val$event:I

    if-ne v5, v8, :cond_1

    .line 156
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage$1$1;->this$1:Lcn/smssdk/gui/RegisterPage$1;

    invoke-static {v5}, Lcn/smssdk/gui/RegisterPage$1;->access$0(Lcn/smssdk/gui/RegisterPage$1;)Lcn/smssdk/gui/RegisterPage;

    move-result-object v5

    invoke-virtual {v5}, Lcn/smssdk/gui/RegisterPage;->finish()V

    goto :goto_0

    .line 159
    :cond_3
    iget v5, p0, Lcn/smssdk/gui/RegisterPage$1$1;->val$event:I

    if-ne v5, v8, :cond_4

    .line 160
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage$1$1;->val$data:Ljava/lang/Object;

    if-eqz v5, :cond_4

    .line 161
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage$1$1;->val$data:Ljava/lang/Object;

    instance-of v5, v5, Lcn/smssdk/UserInterruptException;

    if-nez v5, :cond_1

    .line 168
    :cond_4
    :try_start_0
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage$1$1;->val$data:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 169
    iget-object v4, p0, Lcn/smssdk/gui/RegisterPage$1$1;->val$data:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Throwable;

    .line 171
    .local v4, "throwable":Ljava/lang/Throwable;
    new-instance v2, Lorg/json/JSONObject;

    .line 172
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 171
    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 173
    .local v2, "object":Lorg/json/JSONObject;
    const-string v5, "detail"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "des":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 175
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage$1$1;->this$1:Lcn/smssdk/gui/RegisterPage$1;

    invoke-static {v5}, Lcn/smssdk/gui/RegisterPage$1;->access$0(Lcn/smssdk/gui/RegisterPage$1;)Lcn/smssdk/gui/RegisterPage;

    move-result-object v5

    invoke-static {v5}, Lcn/smssdk/gui/RegisterPage;->access$2(Lcn/smssdk/gui/RegisterPage;)Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    .end local v0    # "des":Ljava/lang/String;
    .end local v2    # "object":Lorg/json/JSONObject;
    .end local v4    # "throwable":Ljava/lang/Throwable;
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 182
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage$1$1;->this$1:Lcn/smssdk/gui/RegisterPage$1;

    invoke-static {v5}, Lcn/smssdk/gui/RegisterPage$1;->access$0(Lcn/smssdk/gui/RegisterPage$1;)Lcn/smssdk/gui/RegisterPage;

    move-result-object v5

    invoke-static {v5}, Lcn/smssdk/gui/RegisterPage;->access$2(Lcn/smssdk/gui/RegisterPage;)Landroid/app/Activity;

    move-result-object v5

    .line 183
    const-string v6, "smssdk_network_error"

    .line 182
    invoke-static {v5, v6}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 184
    .local v3, "resId":I
    if-lez v3, :cond_1

    .line 185
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage$1$1;->this$1:Lcn/smssdk/gui/RegisterPage$1;

    invoke-static {v5}, Lcn/smssdk/gui/RegisterPage$1;->access$0(Lcn/smssdk/gui/RegisterPage$1;)Lcn/smssdk/gui/RegisterPage;

    move-result-object v5

    invoke-static {v5}, Lcn/smssdk/gui/RegisterPage;->access$2(Lcn/smssdk/gui/RegisterPage;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
