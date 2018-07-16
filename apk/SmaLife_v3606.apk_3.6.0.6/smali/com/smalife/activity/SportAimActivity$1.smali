.class Lcom/smalife/activity/SportAimActivity$1;
.super Landroid/os/Handler;
.source "SportAimActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/SportAimActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/SportAimActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/SportAimActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/SportAimActivity$1;->this$0:Lcom/smalife/activity/SportAimActivity;

    .line 155
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v9, 0x13880

    const v8, 0xc350

    const v7, 0x9c40

    const/16 v6, 0x4e20

    .line 158
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 159
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 161
    :pswitch_0
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "##0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, "fnum":Ljava/text/DecimalFormat;
    iget-object v1, p0, Lcom/smalife/activity/SportAimActivity$1;->this$0:Lcom/smalife/activity/SportAimActivity;

    invoke-static {v1}, Lcom/smalife/activity/SportAimActivity;->access$0(Lcom/smalife/activity/SportAimActivity;)Lcom/smalife/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getUnit()I

    move-result v1

    if-nez v1, :cond_2

    .line 163
    iget-object v1, p0, Lcom/smalife/activity/SportAimActivity$1;->this$0:Lcom/smalife/activity/SportAimActivity;

    invoke-static {v1}, Lcom/smalife/activity/SportAimActivity;->access$1(Lcom/smalife/activity/SportAimActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smalife/activity/SportAimActivity$1;->this$0:Lcom/smalife/activity/SportAimActivity;

    iget v3, v3, Lcom/smalife/activity/SportAimActivity;->mdistance:F

    float-to-double v4, v3

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    iget-object v3, p0, Lcom/smalife/activity/SportAimActivity$1;->this$0:Lcom/smalife/activity/SportAimActivity;

    invoke-virtual {v3}, Lcom/smalife/activity/SportAimActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09014c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/smalife/activity/SportAimActivity$1;->this$0:Lcom/smalife/activity/SportAimActivity;

    invoke-static {v1}, Lcom/smalife/activity/SportAimActivity;->access$2(Lcom/smalife/activity/SportAimActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smalife/activity/SportAimActivity$1;->this$0:Lcom/smalife/activity/SportAimActivity;

    invoke-static {v3}, Lcom/smalife/activity/SportAimActivity;->access$3(Lcom/smalife/activity/SportAimActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    iget-object v3, p0, Lcom/smalife/activity/SportAimActivity$1;->this$0:Lcom/smalife/activity/SportAimActivity;

    invoke-virtual {v3}, Lcom/smalife/activity/SportAimActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09014b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v1, p0, Lcom/smalife/activity/SportAimActivity$1;->this$0:Lcom/smalife/activity/SportAimActivity;

    invoke-static {v1}, Lcom/smalife/activity/SportAimActivity;->access$4(Lcom/smalife/activity/SportAimActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smalife/activity/SportAimActivity$1;->this$0:Lcom/smalife/activity/SportAimActivity;

    iget v3, v3, Lcom/smalife/activity/SportAimActivity;->mcalories:F

    float-to-double v4, v3

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    iget-object v3, p0, Lcom/smalife/activity/SportAimActivity$1;->this$0:Lcom/smalife/activity/SportAimActivity;

    invoke-virtual {v3}, Lcom/smalife/activity/SportAimActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09014e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v1, p0, Lcom/smalife/activity/SportAimActivity$1;->this$0:Lcom/smalife/activity/SportAimActivity;

    invoke-static {v1}, Lcom/smalife/activity/SportAimActivity;->access$5(Lcom/smalife/activity/SportAimActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/smalife/activity/SportAimActivity$1;->this$0:Lcom/smalife/activity/SportAimActivity;

    invoke-static {v2}, Lcom/smalife/activity/SportAimActivity;->access$3(Lcom/smalife/activity/SportAimActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v1, p0, Lcom/smalife/activity/SportAimActivity$1;->this$0:Lcom/smalife/activity/SportAimActivity;

    invoke-static {v1}, Lcom/smalife/activity/SportAimActivity;->access$3(Lcom/smalife/activity/SportAimActivity;)I

    move-result v1

    if-gt v1, v6, :cond_3

    .line 176
    iget-object v1, p0, Lcom/smalife/activity/SportAimActivity$1;->this$0:Lcom/smalife/activity/SportAimActivity;

    invoke-static {v1}, Lcom/smalife/activity/SportAimActivity;->access$6(Lcom/smalife/activity/SportAimActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/smalife/activity/SportAimActivity$1;->this$0:Lcom/smalife/activity/SportAimActivity;

    invoke-virtual {v2}, Lcom/smalife/activity/SportAimActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 177
    const v3, 0x7f090155

    .line 176
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 165
    :cond_2
    iget-object v1, p0, Lcom/smalife/activity/SportAimActivity$1;->this$0:Lcom/smalife/activity/SportAimActivity;

    invoke-static {v1}, Lcom/smalife/activity/SportAimActivity;->access$0(Lcom/smalife/activity/SportAimActivity;)Lcom/smalife/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getUnit()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 166
    iget-object v1, p0, Lcom/smalife/activity/SportAimActivity$1;->this$0:Lcom/smalife/activity/SportAimActivity;

    invoke-static {v1}, Lcom/smalife/activity/SportAimActivity;->access$1(Lcom/smalife/activity/SportAimActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    .line 167
    iget-object v3, p0, Lcom/smalife/activity/SportAimActivity$1;->this$0:Lcom/smalife/activity/SportAimActivity;

    iget v3, v3, Lcom/smalife/activity/SportAimActivity;->mdistance:F

    invoke-static {v3}, Lcom/smalife/utils/UnitUtils;->convertToMile(F)D

    move-result-wide v4

    .line 166
    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    iget-object v3, p0, Lcom/smalife/activity/SportAimActivity$1;->this$0:Lcom/smalife/activity/SportAimActivity;

    invoke-virtual {v3}, Lcom/smalife/activity/SportAimActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09014d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 178
    :cond_3
    iget-object v1, p0, Lcom/smalife/activity/SportAimActivity$1;->this$0:Lcom/smalife/activity/SportAimActivity;

    invoke-static {v1}, Lcom/smalife/activity/SportAimActivity;->access$3(Lcom/smalife/activity/SportAimActivity;)I

    move-result v1

    if-le v1, v6, :cond_4

    iget-object v1, p0, Lcom/smalife/activity/SportAimActivity$1;->this$0:Lcom/smalife/activity/SportAimActivity;

    invoke-static {v1}, Lcom/smalife/activity/SportAimActivity;->access$3(Lcom/smalife/activity/SportAimActivity;)I

    move-result v1

    if-gt v1, v7, :cond_4

    .line 179
    iget-object v1, p0, Lcom/smalife/activity/SportAimActivity$1;->this$0:Lcom/smalife/activity/SportAimActivity;

    invoke-static {v1}, Lcom/smalife/activity/SportAimActivity;->access$6(Lcom/smalife/activity/SportAimActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/smalife/activity/SportAimActivity$1;->this$0:Lcom/smalife/activity/SportAimActivity;

    invoke-virtual {v2}, Lcom/smalife/activity/SportAimActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 180
    const v3, 0x7f090154

    .line 179
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 181
    :cond_4
    iget-object v1, p0, Lcom/smalife/activity/SportAimActivity$1;->this$0:Lcom/smalife/activity/SportAimActivity;

    invoke-static {v1}, Lcom/smalife/activity/SportAimActivity;->access$3(Lcom/smalife/activity/SportAimActivity;)I

    move-result v1

    if-le v1, v7, :cond_5

    iget-object v1, p0, Lcom/smalife/activity/SportAimActivity$1;->this$0:Lcom/smalife/activity/SportAimActivity;

    invoke-static {v1}, Lcom/smalife/activity/SportAimActivity;->access$3(Lcom/smalife/activity/SportAimActivity;)I

    move-result v1

    if-gt v1, v8, :cond_5

    .line 182
    iget-object v1, p0, Lcom/smalife/activity/SportAimActivity$1;->this$0:Lcom/smalife/activity/SportAimActivity;

    invoke-static {v1}, Lcom/smalife/activity/SportAimActivity;->access$6(Lcom/smalife/activity/SportAimActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/smalife/activity/SportAimActivity$1;->this$0:Lcom/smalife/activity/SportAimActivity;

    invoke-virtual {v2}, Lcom/smalife/activity/SportAimActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 183
    const v3, 0x7f090156

    .line 182
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 184
    :cond_5
    iget-object v1, p0, Lcom/smalife/activity/SportAimActivity$1;->this$0:Lcom/smalife/activity/SportAimActivity;

    invoke-static {v1}, Lcom/smalife/activity/SportAimActivity;->access$3(Lcom/smalife/activity/SportAimActivity;)I

    move-result v1

    if-le v1, v8, :cond_6

    iget-object v1, p0, Lcom/smalife/activity/SportAimActivity$1;->this$0:Lcom/smalife/activity/SportAimActivity;

    invoke-static {v1}, Lcom/smalife/activity/SportAimActivity;->access$3(Lcom/smalife/activity/SportAimActivity;)I

    move-result v1

    if-gt v1, v9, :cond_6

    .line 185
    iget-object v1, p0, Lcom/smalife/activity/SportAimActivity$1;->this$0:Lcom/smalife/activity/SportAimActivity;

    invoke-static {v1}, Lcom/smalife/activity/SportAimActivity;->access$6(Lcom/smalife/activity/SportAimActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/smalife/activity/SportAimActivity$1;->this$0:Lcom/smalife/activity/SportAimActivity;

    invoke-virtual {v2}, Lcom/smalife/activity/SportAimActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 186
    const v3, 0x7f090157

    .line 185
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 187
    :cond_6
    iget-object v1, p0, Lcom/smalife/activity/SportAimActivity$1;->this$0:Lcom/smalife/activity/SportAimActivity;

    invoke-static {v1}, Lcom/smalife/activity/SportAimActivity;->access$3(Lcom/smalife/activity/SportAimActivity;)I

    move-result v1

    if-le v1, v9, :cond_0

    .line 188
    iget-object v1, p0, Lcom/smalife/activity/SportAimActivity$1;->this$0:Lcom/smalife/activity/SportAimActivity;

    invoke-static {v1}, Lcom/smalife/activity/SportAimActivity;->access$6(Lcom/smalife/activity/SportAimActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/smalife/activity/SportAimActivity$1;->this$0:Lcom/smalife/activity/SportAimActivity;

    invoke-virtual {v2}, Lcom/smalife/activity/SportAimActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 189
    const v3, 0x7f090158

    .line 188
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
