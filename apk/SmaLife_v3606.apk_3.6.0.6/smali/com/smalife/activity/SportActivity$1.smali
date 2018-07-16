.class Lcom/smalife/activity/SportActivity$1;
.super Landroid/os/Handler;
.source "SportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/SportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/SportActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/SportActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/SportActivity$1;->this$0:Lcom/smalife/activity/SportActivity;

    .line 211
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/high16 v8, 0x447a0000    # 1000.0f

    .line 214
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 215
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 217
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 218
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v6, "sport_key"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/smalife/db/entity/SportEntity;

    .line 219
    .local v4, "sp":Lcom/smalife/db/entity/SportEntity;
    if-eqz v4, :cond_3

    .line 220
    invoke-virtual {v4}, Lcom/smalife/db/entity/SportEntity;->getCalorie()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    .line 221
    iget-object v6, p0, Lcom/smalife/activity/SportActivity$1;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-virtual {v6, v4}, Lcom/smalife/activity/SportActivity;->countDistanceAndCalories(Lcom/smalife/db/entity/SportEntity;)Lcom/smalife/db/entity/SportEntity;

    move-result-object v4

    .line 223
    :cond_1
    iget-object v6, p0, Lcom/smalife/activity/SportActivity$1;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-virtual {v4}, Lcom/smalife/db/entity/SportEntity;->getDistance()F

    move-result v7

    div-float/2addr v7, v8

    iput v7, v6, Lcom/smalife/activity/SportActivity;->mdistance:F

    .line 224
    iget-object v6, p0, Lcom/smalife/activity/SportActivity$1;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-virtual {v4}, Lcom/smalife/db/entity/SportEntity;->getSteps()I

    move-result v7

    iput v7, v6, Lcom/smalife/activity/SportActivity;->msteps:I

    .line 225
    iget-object v6, p0, Lcom/smalife/activity/SportActivity$1;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-virtual {v4}, Lcom/smalife/db/entity/SportEntity;->getCalorie()F

    move-result v7

    div-float/2addr v7, v8

    iput v7, v6, Lcom/smalife/activity/SportActivity;->mcalories:F

    .line 231
    :goto_1
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v6, "##0.0"

    invoke-direct {v2, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 232
    .local v2, "df":Ljava/text/DecimalFormat;
    iget-object v6, p0, Lcom/smalife/activity/SportActivity$1;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-static {v6}, Lcom/smalife/activity/SportActivity;->access$0(Lcom/smalife/activity/SportActivity;)Lcom/smalife/MyApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smalife/MyApplication;->getUnit()I

    move-result v6

    if-nez v6, :cond_4

    .line 233
    iget-object v6, p0, Lcom/smalife/activity/SportActivity$1;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-static {v6}, Lcom/smalife/activity/SportActivity;->access$1(Lcom/smalife/activity/SportActivity;)Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/smalife/activity/SportActivity$1;->this$0:Lcom/smalife/activity/SportActivity;

    iget v8, v8, Lcom/smalife/activity/SportActivity;->mdistance:F

    float-to-double v8, v8

    invoke-virtual {v2, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/smalife/activity/SportActivity$1;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-virtual {v8}, Lcom/smalife/activity/SportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09014c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    :cond_2
    :goto_2
    iget-object v6, p0, Lcom/smalife/activity/SportActivity$1;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-static {v6}, Lcom/smalife/activity/SportActivity;->access$2(Lcom/smalife/activity/SportActivity;)Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/smalife/activity/SportActivity$1;->this$0:Lcom/smalife/activity/SportActivity;

    iget v8, v8, Lcom/smalife/activity/SportActivity;->msteps:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/smalife/activity/SportActivity$1;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-virtual {v8}, Lcom/smalife/activity/SportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09014b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v6, p0, Lcom/smalife/activity/SportActivity$1;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-static {v6}, Lcom/smalife/activity/SportActivity;->access$3(Lcom/smalife/activity/SportActivity;)Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/smalife/activity/SportActivity$1;->this$0:Lcom/smalife/activity/SportActivity;

    iget v8, v8, Lcom/smalife/activity/SportActivity;->mcalories:F

    float-to-double v8, v8

    invoke-virtual {v2, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/smalife/activity/SportActivity$1;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-virtual {v8}, Lcom/smalife/activity/SportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09014e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v6, p0, Lcom/smalife/activity/SportActivity$1;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-static {v6}, Lcom/smalife/activity/SportActivity;->access$4(Lcom/smalife/activity/SportActivity;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 242
    .local v3, "index":I
    iget-object v6, p0, Lcom/smalife/activity/SportActivity$1;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-static {v6}, Lcom/smalife/activity/SportActivity;->access$4(Lcom/smalife/activity/SportActivity;)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v3, 0x1

    iget-object v8, p0, Lcom/smalife/activity/SportActivity$1;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-static {v8}, Lcom/smalife/activity/SportActivity;->access$4(Lcom/smalife/activity/SportActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 243
    .local v5, "tempString":Ljava/lang/String;
    iget-object v6, p0, Lcom/smalife/activity/SportActivity$1;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-static {v6}, Lcom/smalife/activity/SportActivity;->access$4(Lcom/smalife/activity/SportActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/smalife/activity/SportActivity$1;->this$0:Lcom/smalife/activity/SportActivity;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/smalife/activity/SportActivity;->access$5(Lcom/smalife/activity/SportActivity;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 244
    iget-object v6, p0, Lcom/smalife/activity/SportActivity$1;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-static {v6}, Lcom/smalife/activity/SportActivity;->access$6(Lcom/smalife/activity/SportActivity;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/smalife/activity/SportActivity$1;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-virtual {v7}, Lcom/smalife/activity/SportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0900e6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    :goto_3
    iget-object v6, p0, Lcom/smalife/activity/SportActivity$1;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-static {v6}, Lcom/smalife/activity/SportActivity;->access$7(Lcom/smalife/activity/SportActivity;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 227
    .end local v2    # "df":Ljava/text/DecimalFormat;
    .end local v3    # "index":I
    .end local v5    # "tempString":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/smalife/activity/SportActivity$1;->this$0:Lcom/smalife/activity/SportActivity;

    sget v7, Lcom/smalife/ble/CmdKeyValue;->sport_distance:F

    div-float/2addr v7, v8

    iput v7, v6, Lcom/smalife/activity/SportActivity;->mdistance:F

    .line 228
    iget-object v6, p0, Lcom/smalife/activity/SportActivity$1;->this$0:Lcom/smalife/activity/SportActivity;

    sget v7, Lcom/smalife/ble/CmdKeyValue;->sport_steps:I

    iput v7, v6, Lcom/smalife/activity/SportActivity;->msteps:I

    .line 229
    iget-object v6, p0, Lcom/smalife/activity/SportActivity$1;->this$0:Lcom/smalife/activity/SportActivity;

    sget v7, Lcom/smalife/ble/CmdKeyValue;->sport_calories:F

    div-float/2addr v7, v8

    iput v7, v6, Lcom/smalife/activity/SportActivity;->mcalories:F

    goto/16 :goto_1

    .line 234
    .restart local v2    # "df":Ljava/text/DecimalFormat;
    :cond_4
    iget-object v6, p0, Lcom/smalife/activity/SportActivity$1;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-static {v6}, Lcom/smalife/activity/SportActivity;->access$0(Lcom/smalife/activity/SportActivity;)Lcom/smalife/MyApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smalife/MyApplication;->getUnit()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 235
    iget-object v6, p0, Lcom/smalife/activity/SportActivity$1;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-static {v6}, Lcom/smalife/activity/SportActivity;->access$1(Lcom/smalife/activity/SportActivity;)Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/smalife/activity/SportActivity$1;->this$0:Lcom/smalife/activity/SportActivity;

    iget v8, v8, Lcom/smalife/activity/SportActivity;->mdistance:F

    invoke-static {v8}, Lcom/smalife/utils/UnitUtils;->convertToMile(F)D

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    iget-object v8, p0, Lcom/smalife/activity/SportActivity$1;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-virtual {v8}, Lcom/smalife/activity/SportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09014d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 235
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 246
    .restart local v3    # "index":I
    .restart local v5    # "tempString":Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lcom/smalife/activity/SportActivity$1;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-static {v6}, Lcom/smalife/activity/SportActivity;->access$6(Lcom/smalife/activity/SportActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 251
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "df":Ljava/text/DecimalFormat;
    .end local v3    # "index":I
    .end local v4    # "sp":Lcom/smalife/db/entity/SportEntity;
    .end local v5    # "tempString":Ljava/lang/String;
    :pswitch_1
    const/4 v0, 0x0

    .line 252
    .local v0, "aim_num":I
    iget-object v6, p0, Lcom/smalife/activity/SportActivity$1;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-static {v6}, Lcom/smalife/activity/SportActivity;->access$8(Lcom/smalife/activity/SportActivity;)Lcom/smalife/db/entity/AimEntity;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 253
    iget-object v6, p0, Lcom/smalife/activity/SportActivity$1;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-static {v6}, Lcom/smalife/activity/SportActivity;->access$8(Lcom/smalife/activity/SportActivity;)Lcom/smalife/db/entity/AimEntity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smalife/db/entity/AimEntity;->getSteps()I

    move-result v0

    .line 257
    :goto_4
    iget-object v6, p0, Lcom/smalife/activity/SportActivity$1;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-static {v6}, Lcom/smalife/activity/SportActivity;->access$10(Lcom/smalife/activity/SportActivity;)Lcom/smalife/utils/CircleBar;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/smalife/utils/CircleBar;->setMaxstepnumber(I)V

    .line 258
    if-eqz v0, :cond_0

    .line 259
    iget-object v6, p0, Lcom/smalife/activity/SportActivity$1;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-static {v6}, Lcom/smalife/activity/SportActivity;->access$9(Lcom/smalife/activity/SportActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 255
    :cond_6
    iget-object v6, p0, Lcom/smalife/activity/SportActivity$1;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-static {v6}, Lcom/smalife/activity/SportActivity;->access$9(Lcom/smalife/activity/SportActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    .line 266
    .end local v0    # "aim_num":I
    :pswitch_2
    iget-object v6, p0, Lcom/smalife/activity/SportActivity$1;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-static {v6}, Lcom/smalife/activity/SportActivity;->access$10(Lcom/smalife/activity/SportActivity;)Lcom/smalife/utils/CircleBar;

    move-result-object v6

    iget-object v7, p0, Lcom/smalife/activity/SportActivity$1;->this$0:Lcom/smalife/activity/SportActivity;

    iget v7, v7, Lcom/smalife/activity/SportActivity;->msteps:I

    const/16 v8, 0xa

    invoke-virtual {v6, v7, v8}, Lcom/smalife/utils/CircleBar;->update(II)V

    goto/16 :goto_0

    .line 269
    :pswitch_3
    iget-object v6, p0, Lcom/smalife/activity/SportActivity$1;->this$0:Lcom/smalife/activity/SportActivity;

    iget-object v7, p0, Lcom/smalife/activity/SportActivity$1;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-static {v7}, Lcom/smalife/activity/SportActivity;->access$11(Lcom/smalife/activity/SportActivity;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/smalife/activity/SportActivity;->access$12(Lcom/smalife/activity/SportActivity;I)V

    goto/16 :goto_0

    .line 272
    :pswitch_4
    iget-object v6, p0, Lcom/smalife/activity/SportActivity$1;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-static {v6}, Lcom/smalife/activity/SportActivity;->access$13(Lcom/smalife/activity/SportActivity;)V

    goto/16 :goto_0

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
