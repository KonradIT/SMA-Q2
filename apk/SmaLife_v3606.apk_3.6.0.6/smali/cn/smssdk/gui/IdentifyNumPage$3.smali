.class Lcn/smssdk/gui/IdentifyNumPage$3;
.super Ljava/lang/Object;
.source "IdentifyNumPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/IdentifyNumPage;->countDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/smssdk/gui/IdentifyNumPage;


# direct methods
.method constructor <init>(Lcn/smssdk/gui/IdentifyNumPage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage$3;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 173
    iget-object v2, p0, Lcn/smssdk/gui/IdentifyNumPage$3;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v2}, Lcn/smssdk/gui/IdentifyNumPage;->access$4(Lcn/smssdk/gui/IdentifyNumPage;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Lcn/smssdk/gui/IdentifyNumPage;->access$5(Lcn/smssdk/gui/IdentifyNumPage;I)V

    .line 174
    iget-object v2, p0, Lcn/smssdk/gui/IdentifyNumPage$3;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v2}, Lcn/smssdk/gui/IdentifyNumPage;->access$4(Lcn/smssdk/gui/IdentifyNumPage;)I

    move-result v2

    if-nez v2, :cond_1

    .line 175
    iget-object v2, p0, Lcn/smssdk/gui/IdentifyNumPage$3;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v2}, Lcn/smssdk/gui/IdentifyNumPage;->access$6(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Activity;

    move-result-object v2

    .line 176
    const-string v3, "smssdk_unreceive_identify_code"

    .line 175
    invoke-static {v2, v3}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 177
    .local v0, "resId":I
    if-lez v0, :cond_0

    .line 178
    iget-object v2, p0, Lcn/smssdk/gui/IdentifyNumPage$3;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-virtual {v2}, Lcn/smssdk/gui/IdentifyNumPage;->getContext()Landroid/content/Context;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcn/smssdk/gui/IdentifyNumPage$3;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v4}, Lcn/smssdk/gui/IdentifyNumPage;->access$4(Lcn/smssdk/gui/IdentifyNumPage;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "unReceive":Ljava/lang/String;
    iget-object v2, p0, Lcn/smssdk/gui/IdentifyNumPage$3;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v2}, Lcn/smssdk/gui/IdentifyNumPage;->access$7(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    .end local v1    # "unReceive":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcn/smssdk/gui/IdentifyNumPage$3;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v2}, Lcn/smssdk/gui/IdentifyNumPage;->access$7(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 182
    iget-object v2, p0, Lcn/smssdk/gui/IdentifyNumPage$3;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v2}, Lcn/smssdk/gui/IdentifyNumPage;->access$8(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 183
    iget-object v2, p0, Lcn/smssdk/gui/IdentifyNumPage$3;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    const/16 v3, 0x3c

    invoke-static {v2, v3}, Lcn/smssdk/gui/IdentifyNumPage;->access$5(Lcn/smssdk/gui/IdentifyNumPage;I)V

    .line 196
    :goto_0
    return-void

    .line 185
    .end local v0    # "resId":I
    :cond_1
    iget-object v2, p0, Lcn/smssdk/gui/IdentifyNumPage$3;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v2}, Lcn/smssdk/gui/IdentifyNumPage;->access$6(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "smssdk_receive_msg"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 186
    .restart local v0    # "resId":I
    if-lez v0, :cond_2

    .line 187
    iget-object v2, p0, Lcn/smssdk/gui/IdentifyNumPage$3;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-virtual {v2}, Lcn/smssdk/gui/IdentifyNumPage;->getContext()Landroid/content/Context;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcn/smssdk/gui/IdentifyNumPage$3;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v4}, Lcn/smssdk/gui/IdentifyNumPage;->access$4(Lcn/smssdk/gui/IdentifyNumPage;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 188
    .restart local v1    # "unReceive":Ljava/lang/String;
    iget-object v2, p0, Lcn/smssdk/gui/IdentifyNumPage$3;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v2}, Lcn/smssdk/gui/IdentifyNumPage;->access$7(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    .end local v1    # "unReceive":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcn/smssdk/gui/IdentifyNumPage$3;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v2}, Lcn/smssdk/gui/IdentifyNumPage;->access$7(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 194
    iget-object v2, p0, Lcn/smssdk/gui/IdentifyNumPage$3;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, p0, v4, v5}, Lcn/smssdk/gui/IdentifyNumPage;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method
