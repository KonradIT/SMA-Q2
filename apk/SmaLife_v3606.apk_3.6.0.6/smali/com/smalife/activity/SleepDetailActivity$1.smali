.class Lcom/smalife/activity/SleepDetailActivity$1;
.super Landroid/os/Handler;
.source "SleepDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/SleepDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/SleepDetailActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/SleepDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/SleepDetailActivity$1;->this$0:Lcom/smalife/activity/SleepDetailActivity;

    .line 244
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 247
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 248
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 250
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/activity/SleepDetailActivity$1;->this$0:Lcom/smalife/activity/SleepDetailActivity;

    invoke-static {v2}, Lcom/smalife/activity/SleepDetailActivity;->access$0(Lcom/smalife/activity/SleepDetailActivity;)Lcom/smalife/db/entity/SleepEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smalife/db/entity/SleepEntity;->getFallsleep_time()J

    move-result-wide v4

    .line 251
    .local v4, "fall_time":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/activity/SleepDetailActivity$1;->this$0:Lcom/smalife/activity/SleepDetailActivity;

    invoke-static {v2}, Lcom/smalife/activity/SleepDetailActivity;->access$0(Lcom/smalife/activity/SleepDetailActivity;)Lcom/smalife/db/entity/SleepEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smalife/db/entity/SleepEntity;->getWeakup_time()J

    move-result-wide v18

    .line 252
    .local v18, "wakeup_time":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/activity/SleepDetailActivity$1;->this$0:Lcom/smalife/activity/SleepDetailActivity;

    invoke-static {v2}, Lcom/smalife/activity/SleepDetailActivity;->access$0(Lcom/smalife/activity/SleepDetailActivity;)Lcom/smalife/db/entity/SleepEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smalife/db/entity/SleepEntity;->getDeep_time()J

    move-result-wide v10

    .line 253
    .local v10, "deep_long":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/activity/SleepDetailActivity$1;->this$0:Lcom/smalife/activity/SleepDetailActivity;

    invoke-static {v2}, Lcom/smalife/activity/SleepDetailActivity;->access$0(Lcom/smalife/activity/SleepDetailActivity;)Lcom/smalife/db/entity/SleepEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smalife/db/entity/SleepEntity;->getTint_time()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    .line 254
    .local v16, "tint_long":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/activity/SleepDetailActivity$1;->this$0:Lcom/smalife/activity/SleepDetailActivity;

    invoke-static {v2}, Lcom/smalife/activity/SleepDetailActivity;->access$0(Lcom/smalife/activity/SleepDetailActivity;)Lcom/smalife/db/entity/SleepEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smalife/db/entity/SleepEntity;->getClear_time()J

    move-result-wide v8

    .line 256
    .local v8, "clear_time":J
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-gtz v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, v18, v2

    if-lez v2, :cond_1

    .line 257
    sub-long v2, v18, v4

    sub-long v10, v2, v16

    .line 260
    :cond_1
    sub-long v14, v18, v4

    .line 261
    .local v14, "sleep_long":J
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-gtz v2, :cond_6

    .line 262
    const-wide/16 v16, 0x0

    .line 263
    const-wide/16 v8, 0x0

    .line 264
    const-wide/16 v10, 0x0

    .line 270
    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-lez v2, :cond_7

    .line 271
    const-wide/16 v2, 0x3c

    div-long v2, v10, v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v12, v2

    .line 272
    .local v12, "hour":I
    const-wide/16 v2, 0x3c

    rem-long v2, v10, v2

    long-to-int v13, v2

    .line 273
    .local v13, "min":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/activity/SleepDetailActivity$1;->this$0:Lcom/smalife/activity/SleepDetailActivity;

    invoke-static {v2}, Lcom/smalife/activity/SleepDetailActivity;->access$1(Lcom/smalife/activity/SleepDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smalife/activity/SleepDetailActivity$1;->this$0:Lcom/smalife/activity/SleepDetailActivity;

    const v6, 0x7f0900d7

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v20, 0x0

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepDetailActivity$1;->this$0:Lcom/smalife/activity/SleepDetailActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/smalife/activity/SleepDetailActivity;->access$2(Lcom/smalife/activity/SleepDetailActivity;)Ljava/text/DecimalFormat;

    move-result-object v21

    int-to-long v0, v12

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v7, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepDetailActivity$1;->this$0:Lcom/smalife/activity/SleepDetailActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/smalife/activity/SleepDetailActivity;->access$2(Lcom/smalife/activity/SleepDetailActivity;)Ljava/text/DecimalFormat;

    move-result-object v21

    int-to-long v0, v13

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v7, v20

    .line 273
    invoke-virtual {v3, v6, v7}, Lcom/smalife/activity/SleepDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    .end local v12    # "hour":I
    .end local v13    # "min":I
    :goto_2
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-lez v2, :cond_8

    .line 281
    const-wide/16 v2, 0x3c

    div-long v2, v16, v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v12, v2

    .line 282
    .restart local v12    # "hour":I
    const-wide/16 v2, 0x3c

    rem-long v2, v16, v2

    long-to-int v13, v2

    .line 283
    .restart local v13    # "min":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/activity/SleepDetailActivity$1;->this$0:Lcom/smalife/activity/SleepDetailActivity;

    invoke-static {v2}, Lcom/smalife/activity/SleepDetailActivity;->access$3(Lcom/smalife/activity/SleepDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smalife/activity/SleepDetailActivity$1;->this$0:Lcom/smalife/activity/SleepDetailActivity;

    const v6, 0x7f0900d7

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v20, 0x0

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepDetailActivity$1;->this$0:Lcom/smalife/activity/SleepDetailActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/smalife/activity/SleepDetailActivity;->access$2(Lcom/smalife/activity/SleepDetailActivity;)Ljava/text/DecimalFormat;

    move-result-object v21

    int-to-long v0, v12

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v7, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepDetailActivity$1;->this$0:Lcom/smalife/activity/SleepDetailActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/smalife/activity/SleepDetailActivity;->access$2(Lcom/smalife/activity/SleepDetailActivity;)Ljava/text/DecimalFormat;

    move-result-object v21

    int-to-long v0, v13

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v7, v20

    .line 283
    invoke-virtual {v3, v6, v7}, Lcom/smalife/activity/SleepDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    .end local v12    # "hour":I
    .end local v13    # "min":I
    :goto_3
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-lez v2, :cond_9

    .line 291
    const-wide/16 v2, 0x3c

    div-long v2, v8, v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v12, v2

    .line 292
    .restart local v12    # "hour":I
    const-wide/16 v2, 0x3c

    rem-long v2, v8, v2

    long-to-int v13, v2

    .line 293
    .restart local v13    # "min":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/activity/SleepDetailActivity$1;->this$0:Lcom/smalife/activity/SleepDetailActivity;

    invoke-static {v2}, Lcom/smalife/activity/SleepDetailActivity;->access$4(Lcom/smalife/activity/SleepDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smalife/activity/SleepDetailActivity$1;->this$0:Lcom/smalife/activity/SleepDetailActivity;

    const v6, 0x7f0900d7

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v20, 0x0

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepDetailActivity$1;->this$0:Lcom/smalife/activity/SleepDetailActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/smalife/activity/SleepDetailActivity;->access$2(Lcom/smalife/activity/SleepDetailActivity;)Ljava/text/DecimalFormat;

    move-result-object v21

    int-to-long v0, v12

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v7, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepDetailActivity$1;->this$0:Lcom/smalife/activity/SleepDetailActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/smalife/activity/SleepDetailActivity;->access$2(Lcom/smalife/activity/SleepDetailActivity;)Ljava/text/DecimalFormat;

    move-result-object v21

    int-to-long v0, v13

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v7, v20

    .line 293
    invoke-virtual {v3, v6, v7}, Lcom/smalife/activity/SleepDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    .end local v12    # "hour":I
    .end local v13    # "min":I
    :goto_4
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-lez v2, :cond_a

    .line 301
    const-wide/16 v2, 0x3c

    div-long v2, v14, v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v12, v2

    .line 302
    .restart local v12    # "hour":I
    const-wide/16 v2, 0x3c

    rem-long v2, v14, v2

    long-to-int v13, v2

    .line 303
    .restart local v13    # "min":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/activity/SleepDetailActivity$1;->this$0:Lcom/smalife/activity/SleepDetailActivity;

    invoke-static {v2}, Lcom/smalife/activity/SleepDetailActivity;->access$5(Lcom/smalife/activity/SleepDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smalife/activity/SleepDetailActivity$1;->this$0:Lcom/smalife/activity/SleepDetailActivity;

    const v6, 0x7f0900d7

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v20, 0x0

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepDetailActivity$1;->this$0:Lcom/smalife/activity/SleepDetailActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/smalife/activity/SleepDetailActivity;->access$2(Lcom/smalife/activity/SleepDetailActivity;)Ljava/text/DecimalFormat;

    move-result-object v21

    int-to-long v0, v12

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v7, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepDetailActivity$1;->this$0:Lcom/smalife/activity/SleepDetailActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/smalife/activity/SleepDetailActivity;->access$2(Lcom/smalife/activity/SleepDetailActivity;)Ljava/text/DecimalFormat;

    move-result-object v21

    int-to-long v0, v13

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v7, v20

    .line 303
    invoke-virtual {v3, v6, v7}, Lcom/smalife/activity/SleepDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    .end local v12    # "hour":I
    .end local v13    # "min":I
    :goto_5
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_3

    .line 311
    const-wide/16 v2, 0x3c

    rem-long v2, v4, v2

    long-to-int v13, v2

    .line 312
    .restart local v13    # "min":I
    const-wide/16 v2, 0x5a0

    cmp-long v2, v4, v2

    if-lez v2, :cond_2

    .line 313
    const-wide/16 v2, 0x5a0

    sub-long/2addr v4, v2

    .line 315
    :cond_2
    const-wide/16 v2, 0x3c

    div-long v2, v4, v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v12, v2

    .line 316
    .restart local v12    # "hour":I
    const/16 v2, 0xa

    if-ge v13, v2, :cond_b

    if-ltz v13, :cond_b

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/activity/SleepDetailActivity$1;->this$0:Lcom/smalife/activity/SleepDetailActivity;

    invoke-static {v2}, Lcom/smalife/activity/SleepDetailActivity;->access$6(Lcom/smalife/activity/SleepDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    .end local v12    # "hour":I
    .end local v13    # "min":I
    :cond_3
    :goto_6
    const-wide/16 v2, 0x0

    cmp-long v2, v18, v2

    if-lez v2, :cond_5

    .line 324
    const-wide/16 v2, 0x3c

    rem-long v2, v18, v2

    long-to-int v13, v2

    .line 325
    .restart local v13    # "min":I
    const-wide/16 v2, 0x5a0

    cmp-long v2, v18, v2

    if-lez v2, :cond_4

    .line 326
    const-wide/16 v2, 0x5a0

    sub-long v18, v18, v2

    .line 328
    :cond_4
    const-wide/16 v2, 0x3c

    div-long v2, v18, v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v12, v2

    .line 329
    .restart local v12    # "hour":I
    const/16 v2, 0xa

    if-ge v13, v2, :cond_c

    if-ltz v13, :cond_c

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/activity/SleepDetailActivity$1;->this$0:Lcom/smalife/activity/SleepDetailActivity;

    invoke-static {v2}, Lcom/smalife/activity/SleepDetailActivity;->access$7(Lcom/smalife/activity/SleepDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    .end local v12    # "hour":I
    .end local v13    # "min":I
    :cond_5
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/activity/SleepDetailActivity$1;->this$0:Lcom/smalife/activity/SleepDetailActivity;

    invoke-static {v2}, Lcom/smalife/activity/SleepDetailActivity;->access$8(Lcom/smalife/activity/SleepDetailActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/activity/SleepDetailActivity$1;->this$0:Lcom/smalife/activity/SleepDetailActivity;

    invoke-static {v2}, Lcom/smalife/activity/SleepDetailActivity;->access$8(Lcom/smalife/activity/SleepDetailActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/activity/SleepDetailActivity$1;->this$0:Lcom/smalife/activity/SleepDetailActivity;

    invoke-static {v2}, Lcom/smalife/activity/SleepDetailActivity;->access$9(Lcom/smalife/activity/SleepDetailActivity;)Lcom/smalife/utils/BarChartPanel;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smalife/activity/SleepDetailActivity$1;->this$0:Lcom/smalife/activity/SleepDetailActivity;

    invoke-static {v3}, Lcom/smalife/activity/SleepDetailActivity;->access$8(Lcom/smalife/activity/SleepDetailActivity;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smalife/activity/SleepDetailActivity$1;->this$0:Lcom/smalife/activity/SleepDetailActivity;

    invoke-static {v6}, Lcom/smalife/activity/SleepDetailActivity;->access$0(Lcom/smalife/activity/SleepDetailActivity;)Lcom/smalife/db/entity/SleepEntity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smalife/db/entity/SleepEntity;->getWeakup_time()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Lcom/smalife/utils/BarChartPanel;->updateSeries(Ljava/util/ArrayList;JJ)V

    goto/16 :goto_0

    .line 267
    :cond_6
    sub-long v2, v14, v16

    sub-long v10, v2, v8

    goto/16 :goto_1

    .line 276
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/activity/SleepDetailActivity$1;->this$0:Lcom/smalife/activity/SleepDetailActivity;

    invoke-static {v2}, Lcom/smalife/activity/SleepDetailActivity;->access$1(Lcom/smalife/activity/SleepDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smalife/activity/SleepDetailActivity$1;->this$0:Lcom/smalife/activity/SleepDetailActivity;

    const v6, 0x7f0900d7

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v20, 0x0

    .line 277
    const-string v21, "00"

    aput-object v21, v7, v20

    const/16 v20, 0x1

    const-string v21, "00"

    aput-object v21, v7, v20

    .line 276
    invoke-virtual {v3, v6, v7}, Lcom/smalife/activity/SleepDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 286
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/activity/SleepDetailActivity$1;->this$0:Lcom/smalife/activity/SleepDetailActivity;

    invoke-static {v2}, Lcom/smalife/activity/SleepDetailActivity;->access$3(Lcom/smalife/activity/SleepDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smalife/activity/SleepDetailActivity$1;->this$0:Lcom/smalife/activity/SleepDetailActivity;

    const v6, 0x7f0900d7

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v20, 0x0

    .line 287
    const-string v21, "00"

    aput-object v21, v7, v20

    const/16 v20, 0x1

    const-string v21, "00"

    aput-object v21, v7, v20

    .line 286
    invoke-virtual {v3, v6, v7}, Lcom/smalife/activity/SleepDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 296
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/activity/SleepDetailActivity$1;->this$0:Lcom/smalife/activity/SleepDetailActivity;

    invoke-static {v2}, Lcom/smalife/activity/SleepDetailActivity;->access$4(Lcom/smalife/activity/SleepDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smalife/activity/SleepDetailActivity$1;->this$0:Lcom/smalife/activity/SleepDetailActivity;

    const v6, 0x7f0900d7

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v20, 0x0

    .line 297
    const-string v21, "00"

    aput-object v21, v7, v20

    const/16 v20, 0x1

    const-string v21, "00"

    aput-object v21, v7, v20

    .line 296
    invoke-virtual {v3, v6, v7}, Lcom/smalife/activity/SleepDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 306
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/activity/SleepDetailActivity$1;->this$0:Lcom/smalife/activity/SleepDetailActivity;

    invoke-static {v2}, Lcom/smalife/activity/SleepDetailActivity;->access$5(Lcom/smalife/activity/SleepDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smalife/activity/SleepDetailActivity$1;->this$0:Lcom/smalife/activity/SleepDetailActivity;

    const v6, 0x7f0900d7

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v20, 0x0

    .line 307
    const-string v21, "00"

    aput-object v21, v7, v20

    const/16 v20, 0x1

    const-string v21, "00"

    aput-object v21, v7, v20

    .line 306
    invoke-virtual {v3, v6, v7}, Lcom/smalife/activity/SleepDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 319
    .restart local v12    # "hour":I
    .restart local v13    # "min":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/activity/SleepDetailActivity$1;->this$0:Lcom/smalife/activity/SleepDetailActivity;

    invoke-static {v2}, Lcom/smalife/activity/SleepDetailActivity;->access$6(Lcom/smalife/activity/SleepDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 332
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/activity/SleepDetailActivity$1;->this$0:Lcom/smalife/activity/SleepDetailActivity;

    invoke-static {v2}, Lcom/smalife/activity/SleepDetailActivity;->access$7(Lcom/smalife/activity/SleepDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method
