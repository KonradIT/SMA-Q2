.class Lcom/smalife/activity/SportDetailActivity$1;
.super Landroid/os/Handler;
.source "SportDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/SportDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/SportDetailActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/SportDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/SportDetailActivity$1;->this$0:Lcom/smalife/activity/SportDetailActivity;

    .line 222
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/high16 v8, 0x447a0000    # 1000.0f

    .line 225
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 226
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 265
    :goto_0
    return-void

    .line 229
    :pswitch_0
    iget-object v3, p0, Lcom/smalife/activity/SportDetailActivity$1;->this$0:Lcom/smalife/activity/SportDetailActivity;

    invoke-static {v3}, Lcom/smalife/activity/SportDetailActivity;->access$0(Lcom/smalife/activity/SportDetailActivity;)Lcom/smalife/utils/LineChartView;

    move-result-object v3

    iget-object v4, p0, Lcom/smalife/activity/SportDetailActivity$1;->this$0:Lcom/smalife/activity/SportDetailActivity;

    invoke-static {v4}, Lcom/smalife/activity/SportDetailActivity;->access$1(Lcom/smalife/activity/SportDetailActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/smalife/activity/SportDetailActivity$1;->this$0:Lcom/smalife/activity/SportDetailActivity;

    invoke-static {v5}, Lcom/smalife/activity/SportDetailActivity;->access$2(Lcom/smalife/activity/SportDetailActivity;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/smalife/utils/LineChartView;->redrawLine(Ljava/util/ArrayList;I)V

    .line 230
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/smalife/activity/SportDetailActivity$1;->this$0:Lcom/smalife/activity/SportDetailActivity;

    iget-object v3, v3, Lcom/smalife/activity/SportDetailActivity;->splist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 248
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v3, "##0.00"

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, "fnum":Ljava/text/DecimalFormat;
    iget-object v3, p0, Lcom/smalife/activity/SportDetailActivity$1;->this$0:Lcom/smalife/activity/SportDetailActivity;

    iget-object v3, v3, Lcom/smalife/activity/SportDetailActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v3}, Lcom/smalife/MyApplication;->getUnit()I

    move-result v3

    if-nez v3, :cond_4

    .line 250
    iget-object v3, p0, Lcom/smalife/activity/SportDetailActivity$1;->this$0:Lcom/smalife/activity/SportDetailActivity;

    invoke-static {v3}, Lcom/smalife/activity/SportDetailActivity;->access$9(Lcom/smalife/activity/SportDetailActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/smalife/activity/SportDetailActivity$1;->this$0:Lcom/smalife/activity/SportDetailActivity;

    invoke-static {v5}, Lcom/smalife/activity/SportDetailActivity;->access$7(Lcom/smalife/activity/SportDetailActivity;)F

    move-result v5

    div-float/2addr v5, v8

    float-to-double v6, v5

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    iget-object v5, p0, Lcom/smalife/activity/SportDetailActivity$1;->this$0:Lcom/smalife/activity/SportDetailActivity;

    invoke-virtual {v5}, Lcom/smalife/activity/SportDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09014c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 250
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :goto_2
    iget-object v3, p0, Lcom/smalife/activity/SportDetailActivity$1;->this$0:Lcom/smalife/activity/SportDetailActivity;

    invoke-static {v3}, Lcom/smalife/activity/SportDetailActivity;->access$10(Lcom/smalife/activity/SportDetailActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/smalife/activity/SportDetailActivity$1;->this$0:Lcom/smalife/activity/SportDetailActivity;

    invoke-static {v5}, Lcom/smalife/activity/SportDetailActivity;->access$5(Lcom/smalife/activity/SportDetailActivity;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    iget-object v5, p0, Lcom/smalife/activity/SportDetailActivity$1;->this$0:Lcom/smalife/activity/SportDetailActivity;

    invoke-virtual {v5}, Lcom/smalife/activity/SportDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09014b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 257
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v3, p0, Lcom/smalife/activity/SportDetailActivity$1;->this$0:Lcom/smalife/activity/SportDetailActivity;

    invoke-static {v3}, Lcom/smalife/activity/SportDetailActivity;->access$11(Lcom/smalife/activity/SportDetailActivity;)Landroid/widget/TextView;

    move-result-object v3

    .line 260
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/smalife/activity/SportDetailActivity$1;->this$0:Lcom/smalife/activity/SportDetailActivity;

    invoke-static {v5}, Lcom/smalife/activity/SportDetailActivity;->access$3(Lcom/smalife/activity/SportDetailActivity;)F

    move-result v5

    div-float/2addr v5, v8

    float-to-double v6, v5

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    iget-object v5, p0, Lcom/smalife/activity/SportDetailActivity$1;->this$0:Lcom/smalife/activity/SportDetailActivity;

    invoke-virtual {v5}, Lcom/smalife/activity/SportDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 262
    const v6, 0x7f09014e

    .line 261
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 260
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 231
    .end local v0    # "fnum":Ljava/text/DecimalFormat;
    :cond_0
    iget-object v3, p0, Lcom/smalife/activity/SportDetailActivity$1;->this$0:Lcom/smalife/activity/SportDetailActivity;

    iget-object v3, v3, Lcom/smalife/activity/SportDetailActivity;->splist:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/db/entity/SportEntity;

    .line 232
    .local v2, "m":Lcom/smalife/db/entity/SportEntity;
    invoke-virtual {v2}, Lcom/smalife/db/entity/SportEntity;->getCalorie()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2

    .line 233
    iget-object v3, p0, Lcom/smalife/activity/SportDetailActivity$1;->this$0:Lcom/smalife/activity/SportDetailActivity;

    invoke-static {v3}, Lcom/smalife/activity/SportDetailActivity;->access$3(Lcom/smalife/activity/SportDetailActivity;)F

    move-result v4

    invoke-virtual {v2}, Lcom/smalife/db/entity/SportEntity;->getCalorie()F

    move-result v5

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/smalife/activity/SportDetailActivity;->access$4(Lcom/smalife/activity/SportDetailActivity;F)V

    .line 234
    iget-object v3, p0, Lcom/smalife/activity/SportDetailActivity$1;->this$0:Lcom/smalife/activity/SportDetailActivity;

    invoke-static {v3}, Lcom/smalife/activity/SportDetailActivity;->access$5(Lcom/smalife/activity/SportDetailActivity;)F

    move-result v4

    invoke-virtual {v2}, Lcom/smalife/db/entity/SportEntity;->getSteps()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/smalife/activity/SportDetailActivity;->access$6(Lcom/smalife/activity/SportDetailActivity;F)V

    .line 235
    iget-object v3, p0, Lcom/smalife/activity/SportDetailActivity$1;->this$0:Lcom/smalife/activity/SportDetailActivity;

    invoke-static {v3}, Lcom/smalife/activity/SportDetailActivity;->access$7(Lcom/smalife/activity/SportDetailActivity;)F

    move-result v4

    invoke-virtual {v2}, Lcom/smalife/db/entity/SportEntity;->getDistance()F

    move-result v5

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/smalife/activity/SportDetailActivity;->access$8(Lcom/smalife/activity/SportDetailActivity;F)V

    .line 230
    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 237
    :cond_2
    if-eqz v1, :cond_3

    .line 238
    invoke-virtual {v2}, Lcom/smalife/db/entity/SportEntity;->getCountDate()Ljava/lang/String;

    move-result-object v4

    .line 239
    iget-object v3, p0, Lcom/smalife/activity/SportDetailActivity$1;->this$0:Lcom/smalife/activity/SportDetailActivity;

    iget-object v3, v3, Lcom/smalife/activity/SportDetailActivity;->splist:Ljava/util/ArrayList;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smalife/db/entity/SportEntity;

    invoke-virtual {v3}, Lcom/smalife/db/entity/SportEntity;->getCountDate()Ljava/lang/String;

    move-result-object v3

    .line 238
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 239
    if-nez v3, :cond_1

    .line 240
    :cond_3
    iget-object v3, p0, Lcom/smalife/activity/SportDetailActivity$1;->this$0:Lcom/smalife/activity/SportDetailActivity;

    invoke-virtual {v3, v2}, Lcom/smalife/activity/SportDetailActivity;->countDistanceAndCalories(Lcom/smalife/db/entity/SportEntity;)Lcom/smalife/db/entity/SportEntity;

    move-result-object v2

    .line 241
    iget-object v3, p0, Lcom/smalife/activity/SportDetailActivity$1;->this$0:Lcom/smalife/activity/SportDetailActivity;

    invoke-static {v3}, Lcom/smalife/activity/SportDetailActivity;->access$3(Lcom/smalife/activity/SportDetailActivity;)F

    move-result v4

    invoke-virtual {v2}, Lcom/smalife/db/entity/SportEntity;->getCalorie()F

    move-result v5

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/smalife/activity/SportDetailActivity;->access$4(Lcom/smalife/activity/SportDetailActivity;F)V

    .line 242
    iget-object v3, p0, Lcom/smalife/activity/SportDetailActivity$1;->this$0:Lcom/smalife/activity/SportDetailActivity;

    invoke-static {v3}, Lcom/smalife/activity/SportDetailActivity;->access$5(Lcom/smalife/activity/SportDetailActivity;)F

    move-result v4

    invoke-virtual {v2}, Lcom/smalife/db/entity/SportEntity;->getSteps()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/smalife/activity/SportDetailActivity;->access$6(Lcom/smalife/activity/SportDetailActivity;F)V

    .line 243
    iget-object v3, p0, Lcom/smalife/activity/SportDetailActivity$1;->this$0:Lcom/smalife/activity/SportDetailActivity;

    invoke-static {v3}, Lcom/smalife/activity/SportDetailActivity;->access$7(Lcom/smalife/activity/SportDetailActivity;)F

    move-result v4

    invoke-virtual {v2}, Lcom/smalife/db/entity/SportEntity;->getDistance()F

    move-result v5

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/smalife/activity/SportDetailActivity;->access$8(Lcom/smalife/activity/SportDetailActivity;F)V

    goto :goto_3

    .line 253
    .end local v2    # "m":Lcom/smalife/db/entity/SportEntity;
    .restart local v0    # "fnum":Ljava/text/DecimalFormat;
    :cond_4
    iget-object v3, p0, Lcom/smalife/activity/SportDetailActivity$1;->this$0:Lcom/smalife/activity/SportDetailActivity;

    invoke-static {v3}, Lcom/smalife/activity/SportDetailActivity;->access$9(Lcom/smalife/activity/SportDetailActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    .line 254
    iget-object v5, p0, Lcom/smalife/activity/SportDetailActivity$1;->this$0:Lcom/smalife/activity/SportDetailActivity;

    invoke-static {v5}, Lcom/smalife/activity/SportDetailActivity;->access$7(Lcom/smalife/activity/SportDetailActivity;)F

    move-result v5

    div-float/2addr v5, v8

    invoke-static {v5}, Lcom/smalife/utils/UnitUtils;->convertToMile(F)D

    move-result-wide v6

    .line 253
    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    iget-object v5, p0, Lcom/smalife/activity/SportDetailActivity$1;->this$0:Lcom/smalife/activity/SportDetailActivity;

    invoke-virtual {v5}, Lcom/smalife/activity/SportDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09014d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 253
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method
