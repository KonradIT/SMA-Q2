.class public Lcn/smssdk/gui/IdentifyNumPage;
.super Lcom/mob/tools/FakeActivity;
.source "IdentifyNumPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final RETRY_INTERVAL:I = 0x3c


# instance fields
.field private SHOWDIALOGTYPE:I

.field private btnSounds:Landroid/widget/Button;

.field private btnSubmit:Landroid/widget/Button;

.field private code:Ljava/lang/String;

.field private etIdentifyNum:Landroid/widget/EditText;

.field private formatedPhone:Ljava/lang/String;

.field private handler:Lcn/smssdk/EventHandler;

.field private ivClear:Landroid/widget/ImageView;

.field private pd:Landroid/app/Dialog;

.field private phone:Ljava/lang/String;

.field private smsReceiver:Landroid/content/BroadcastReceiver;

.field private time:I

.field private tvIdentifyNotify:Landroid/widget/TextView;

.field private tvPhone:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;

.field private tvUnreceiveIdentify:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    .line 53
    const/16 v0, 0x3c

    iput v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->time:I

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->SHOWDIALOGTYPE:I

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcn/smssdk/gui/IdentifyNumPage;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 381
    invoke-direct {p0, p1, p2}, Lcn/smssdk/gui/IdentifyNumPage;->afterSubmit(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1(Lcn/smssdk/gui/IdentifyNumPage;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 414
    invoke-direct {p0, p1, p2}, Lcn/smssdk/gui/IdentifyNumPage;->afterGet(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$10(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->pd:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$11(Lcn/smssdk/gui/IdentifyNumPage;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage;->pd:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$12(Lcn/smssdk/gui/IdentifyNumPage;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->code:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcn/smssdk/gui/IdentifyNumPage;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->phone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lcn/smssdk/gui/IdentifyNumPage;)V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Lcn/smssdk/gui/IdentifyNumPage;->countDown()V

    return-void
.end method

.method static synthetic access$2(Lcn/smssdk/gui/IdentifyNumPage;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 466
    invoke-direct {p0, p1, p2}, Lcn/smssdk/gui/IdentifyNumPage;->afterGetVoice(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->etIdentifyNum:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4(Lcn/smssdk/gui/IdentifyNumPage;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->time:I

    return v0
.end method

.method static synthetic access$5(Lcn/smssdk/gui/IdentifyNumPage;I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcn/smssdk/gui/IdentifyNumPage;->time:I

    return-void
.end method

.method static synthetic access$6(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$7(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->tvUnreceiveIdentify:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->btnSounds:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$9(Lcn/smssdk/gui/IdentifyNumPage;)V
    .locals 0

    .prologue
    .line 506
    invoke-direct {p0}, Lcn/smssdk/gui/IdentifyNumPage;->showNotifyDialog()V

    return-void
.end method

.method private afterGet(ILjava/lang/Object;)V
    .locals 1
    .param p1, "result"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 415
    new-instance v0, Lcn/smssdk/gui/IdentifyNumPage$10;

    invoke-direct {v0, p0, p1, p2}, Lcn/smssdk/gui/IdentifyNumPage$10;-><init>(Lcn/smssdk/gui/IdentifyNumPage;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcn/smssdk/gui/IdentifyNumPage;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 458
    return-void
.end method

.method private afterGetVoice(ILjava/lang/Object;)V
    .locals 1
    .param p1, "result"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 467
    new-instance v0, Lcn/smssdk/gui/IdentifyNumPage$11;

    invoke-direct {v0, p0, p1, p2}, Lcn/smssdk/gui/IdentifyNumPage$11;-><init>(Lcn/smssdk/gui/IdentifyNumPage;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcn/smssdk/gui/IdentifyNumPage;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 503
    return-void
.end method

.method private afterSubmit(ILjava/lang/Object;)V
    .locals 1
    .param p1, "result"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 382
    new-instance v0, Lcn/smssdk/gui/IdentifyNumPage$9;

    invoke-direct {v0, p0, p1, p2}, Lcn/smssdk/gui/IdentifyNumPage$9;-><init>(Lcn/smssdk/gui/IdentifyNumPage;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcn/smssdk/gui/IdentifyNumPage;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 406
    return-void
.end method

.method private countDown()V
    .locals 4

    .prologue
    .line 171
    new-instance v0, Lcn/smssdk/gui/IdentifyNumPage$3;

    invoke-direct {v0, p0}, Lcn/smssdk/gui/IdentifyNumPage$3;-><init>(Lcn/smssdk/gui/IdentifyNumPage;)V

    .line 197
    const-wide/16 v2, 0x3e8

    .line 171
    invoke-virtual {p0, v0, v2, v3}, Lcn/smssdk/gui/IdentifyNumPage;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 198
    return-void
.end method

.method private showDialog(I)V
    .locals 10
    .param p1, "type"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 276
    if-ne p1, v8, :cond_4

    .line 277
    iget-object v6, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v7, "CommonDialog"

    invoke-static {v6, v7}, Lcom/mob/tools/utils/R;->getStyleRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 278
    .local v2, "resId":I
    if-lez v2, :cond_2

    .line 279
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcn/smssdk/gui/IdentifyNumPage;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 280
    .local v0, "dialog":Landroid/app/Dialog;
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/smssdk/gui/IdentifyNumPage;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 281
    .local v4, "tv":Landroid/widget/TextView;
    if-ne p1, v8, :cond_3

    .line 282
    iget-object v6, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    .line 283
    const-string v7, "smssdk_resend_identify_code"

    .line 282
    invoke-static {v6, v7}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 288
    :goto_0
    if-lez v2, :cond_0

    .line 289
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    .line 291
    :cond_0
    const/high16 v6, 0x41900000    # 18.0f

    invoke-virtual {v4, v9, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 292
    iget-object v6, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v7, "smssdk_white"

    invoke-static {v6, v7}, Lcom/mob/tools/utils/R;->getColorRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 293
    if-lez v2, :cond_1

    .line 294
    invoke-virtual {p0}, Lcn/smssdk/gui/IdentifyNumPage;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 296
    :cond_1
    invoke-virtual {p0}, Lcn/smssdk/gui/IdentifyNumPage;->getContext()Landroid/content/Context;

    move-result-object v6

    const/16 v7, 0xa

    invoke-static {v6, v7}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v1

    .line 297
    .local v1, "dp_10":I
    invoke-virtual {v4, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 299
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 300
    new-instance v6, Lcn/smssdk/gui/IdentifyNumPage$5;

    invoke-direct {v6, p0, v0}, Lcn/smssdk/gui/IdentifyNumPage$5;-><init>(Lcn/smssdk/gui/IdentifyNumPage;Landroid/app/Dialog;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 318
    new-instance v6, Lcn/smssdk/gui/IdentifyNumPage$6;

    invoke-direct {v6, p0}, Lcn/smssdk/gui/IdentifyNumPage$6;-><init>(Lcn/smssdk/gui/IdentifyNumPage;)V

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 325
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 373
    .end local v0    # "dialog":Landroid/app/Dialog;
    .end local v1    # "dp_10":I
    .end local v2    # "resId":I
    .end local v4    # "tv":Landroid/widget/TextView;
    :cond_2
    :goto_1
    return-void

    .line 285
    .restart local v0    # "dialog":Landroid/app/Dialog;
    .restart local v2    # "resId":I
    .restart local v4    # "tv":Landroid/widget/TextView;
    :cond_3
    iget-object v6, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    .line 286
    const-string v7, "smssdk_send_sounds_identify_code"

    .line 285
    invoke-static {v6, v7}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 327
    .end local v0    # "dialog":Landroid/app/Dialog;
    .end local v2    # "resId":I
    .end local v4    # "tv":Landroid/widget/TextView;
    :cond_4
    if-ne p1, v9, :cond_2

    .line 328
    iget-object v6, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v7, "CommonDialog"

    invoke-static {v6, v7}, Lcom/mob/tools/utils/R;->getStyleRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 329
    .restart local v2    # "resId":I
    if-lez v2, :cond_2

    .line 330
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcn/smssdk/gui/IdentifyNumPage;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 331
    .restart local v0    # "dialog":Landroid/app/Dialog;
    iget-object v6, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v7, "smssdk_send_msg_dialog"

    invoke-static {v6, v7}, Lcom/mob/tools/utils/R;->getLayoutRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 332
    if-lez v2, :cond_2

    .line 333
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 334
    iget-object v6, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v7, "tv_dialog_title"

    invoke-static {v6, v7}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 335
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 336
    .local v5, "tv_title":Landroid/widget/TextView;
    iget-object v6, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    .line 337
    const-string v7, "smssdk_make_sure_send_sounds"

    .line 336
    invoke-static {v6, v7}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 338
    if-lez v2, :cond_5

    .line 339
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(I)V

    .line 341
    :cond_5
    iget-object v6, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v7, "tv_dialog_hint"

    invoke-static {v6, v7}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 342
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 343
    .restart local v4    # "tv":Landroid/widget/TextView;
    iget-object v6, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    .line 344
    const-string v7, "smssdk_send_sounds_identify_code"

    .line 343
    invoke-static {v6, v7}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 345
    if-lez v2, :cond_6

    .line 346
    invoke-virtual {p0}, Lcn/smssdk/gui/IdentifyNumPage;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 347
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    .end local v3    # "text":Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v7, "btn_dialog_ok"

    invoke-static {v6, v7}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 350
    if-lez v2, :cond_7

    .line 351
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    new-instance v7, Lcn/smssdk/gui/IdentifyNumPage$7;

    invoke-direct {v7, p0, v0}, Lcn/smssdk/gui/IdentifyNumPage$7;-><init>(Lcn/smssdk/gui/IdentifyNumPage;Landroid/app/Dialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    :cond_7
    iget-object v6, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v7, "btn_dialog_cancel"

    invoke-static {v6, v7}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 360
    if-lez v2, :cond_8

    .line 361
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    new-instance v7, Lcn/smssdk/gui/IdentifyNumPage$8;

    invoke-direct {v7, p0, v0}, Lcn/smssdk/gui/IdentifyNumPage$8;-><init>(Lcn/smssdk/gui/IdentifyNumPage;Landroid/app/Dialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    :cond_8
    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 368
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1
.end method

.method private showNotifyDialog()V
    .locals 7

    .prologue
    .line 507
    iget-object v5, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v6, "CommonDialog"

    invoke-static {v5, v6}, Lcom/mob/tools/utils/R;->getStyleRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 508
    .local v2, "resId":I
    if-lez v2, :cond_3

    .line 509
    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcn/smssdk/gui/IdentifyNumPage;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 510
    .local v1, "dialog":Landroid/app/Dialog;
    iget-object v5, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v6, "smssdk_back_verify_dialog"

    invoke-static {v5, v6}, Lcom/mob/tools/utils/R;->getLayoutRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 511
    if-lez v2, :cond_3

    .line 512
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 513
    iget-object v5, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v6, "tv_dialog_hint"

    invoke-static {v5, v6}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 514
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 515
    .local v3, "tv":Landroid/widget/TextView;
    iget-object v5, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    .line 516
    const-string v6, "smssdk_close_identify_page_dialog"

    .line 515
    invoke-static {v5, v6}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 517
    if-lez v2, :cond_0

    .line 518
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 520
    :cond_0
    iget-object v5, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v6, "btn_dialog_ok"

    invoke-static {v5, v6}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 521
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 522
    .local v4, "waitBtn":Landroid/widget/Button;
    iget-object v5, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v6, "smssdk_wait"

    invoke-static {v5, v6}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 523
    if-lez v2, :cond_1

    .line 524
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setText(I)V

    .line 526
    :cond_1
    new-instance v5, Lcn/smssdk/gui/IdentifyNumPage$12;

    invoke-direct {v5, p0, v1}, Lcn/smssdk/gui/IdentifyNumPage$12;-><init>(Lcn/smssdk/gui/IdentifyNumPage;Landroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    iget-object v5, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v6, "btn_dialog_cancel"

    invoke-static {v5, v6}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 532
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 533
    .local v0, "backBtn":Landroid/widget/Button;
    iget-object v5, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v6, "smssdk_back"

    invoke-static {v5, v6}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 534
    if-lez v2, :cond_2

    .line 535
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 537
    :cond_2
    new-instance v5, Lcn/smssdk/gui/IdentifyNumPage$13;

    invoke-direct {v5, p0, v1}, Lcn/smssdk/gui/IdentifyNumPage$13;-><init>(Lcn/smssdk/gui/IdentifyNumPage;Landroid/app/Dialog;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 543
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 544
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 547
    .end local v0    # "backBtn":Landroid/widget/Button;
    .end local v1    # "dialog":Landroid/app/Dialog;
    .end local v3    # "tv":Landroid/widget/TextView;
    .end local v4    # "waitBtn":Landroid/widget/Button;
    :cond_3
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 226
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 222
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 229
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 230
    .local v0, "id":I
    iget-object v8, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v9, "ll_back"

    invoke-static {v8, v9}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 231
    .local v4, "id_ll_back":I
    iget-object v8, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v9, "btn_submit"

    invoke-static {v8, v9}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 232
    .local v2, "id_btn_submit":I
    iget-object v8, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    .line 233
    const-string v9, "tv_unreceive_identify"

    .line 232
    invoke-static {v8, v9}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 234
    .local v5, "id_tv_unreceive_identify":I
    iget-object v8, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v9, "iv_clear"

    invoke-static {v8, v9}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 235
    .local v3, "id_iv_clear":I
    iget-object v8, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v9, "btn_sounds"

    invoke-static {v8, v9}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 237
    .local v1, "id_btn_sounds":I
    if-ne v0, v4, :cond_1

    .line 238
    new-instance v8, Lcn/smssdk/gui/IdentifyNumPage$4;

    invoke-direct {v8, p0}, Lcn/smssdk/gui/IdentifyNumPage$4;-><init>(Lcn/smssdk/gui/IdentifyNumPage;)V

    invoke-virtual {p0, v8}, Lcn/smssdk/gui/IdentifyNumPage;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    if-ne v0, v2, :cond_5

    .line 245
    iget-object v8, p0, Lcn/smssdk/gui/IdentifyNumPage;->etIdentifyNum:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 246
    .local v7, "verificationCode":Ljava/lang/String;
    iget-object v8, p0, Lcn/smssdk/gui/IdentifyNumPage;->code:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 247
    iget-object v8, p0, Lcn/smssdk/gui/IdentifyNumPage;->pd:Landroid/app/Dialog;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcn/smssdk/gui/IdentifyNumPage;->pd:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 248
    iget-object v8, p0, Lcn/smssdk/gui/IdentifyNumPage;->pd:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->dismiss()V

    .line 250
    :cond_2
    iget-object v8, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    invoke-static {v8}, Lcn/smssdk/gui/CommonDialog;->ProgressDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v8

    iput-object v8, p0, Lcn/smssdk/gui/IdentifyNumPage;->pd:Landroid/app/Dialog;

    .line 251
    iget-object v8, p0, Lcn/smssdk/gui/IdentifyNumPage;->pd:Landroid/app/Dialog;

    if-eqz v8, :cond_3

    .line 252
    iget-object v8, p0, Lcn/smssdk/gui/IdentifyNumPage;->pd:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 254
    :cond_3
    iget-object v8, p0, Lcn/smssdk/gui/IdentifyNumPage;->code:Ljava/lang/String;

    iget-object v9, p0, Lcn/smssdk/gui/IdentifyNumPage;->phone:Ljava/lang/String;

    invoke-static {v8, v9, v7}, Lcn/smssdk/SMSSDK;->submitVerificationCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_4
    iget-object v8, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v9, "smssdk_write_identify_code"

    invoke-static {v8, v9}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 257
    .local v6, "resId":I
    if-lez v6, :cond_0

    .line 258
    invoke-virtual {p0}, Lcn/smssdk/gui/IdentifyNumPage;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 261
    .end local v6    # "resId":I
    .end local v7    # "verificationCode":Ljava/lang/String;
    :cond_5
    if-ne v0, v5, :cond_6

    .line 262
    const/4 v8, 0x1

    iput v8, p0, Lcn/smssdk/gui/IdentifyNumPage;->SHOWDIALOGTYPE:I

    .line 264
    iget v8, p0, Lcn/smssdk/gui/IdentifyNumPage;->SHOWDIALOGTYPE:I

    invoke-direct {p0, v8}, Lcn/smssdk/gui/IdentifyNumPage;->showDialog(I)V

    goto :goto_0

    .line 265
    :cond_6
    if-ne v0, v3, :cond_7

    .line 266
    iget-object v8, p0, Lcn/smssdk/gui/IdentifyNumPage;->etIdentifyNum:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->clear()V

    goto :goto_0

    .line 267
    :cond_7
    if-ne v0, v1, :cond_0

    .line 268
    const/4 v8, 0x2

    iput v8, p0, Lcn/smssdk/gui/IdentifyNumPage;->SHOWDIALOGTYPE:I

    .line 270
    iget v8, p0, Lcn/smssdk/gui/IdentifyNumPage;->SHOWDIALOGTYPE:I

    invoke-direct {p0, v8}, Lcn/smssdk/gui/IdentifyNumPage;->showDialog(I)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 75
    iget-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v4, "smssdk_input_identify_num_page"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/R;->getLayoutRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 76
    .local v0, "resId":I
    if-lez v0, :cond_3

    .line 77
    iget-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 78
    iget-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v4, "ll_back"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 79
    iget-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v4, "btn_submit"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 81
    iget-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->btnSubmit:Landroid/widget/Button;

    .line 82
    iget-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->btnSubmit:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->btnSubmit:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 85
    iget-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v4, "tv_title"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 86
    iget-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->tvTitle:Landroid/widget/TextView;

    .line 87
    iget-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v4, "smssdk_write_identify_code"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 88
    if-lez v0, :cond_0

    .line 89
    iget-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 91
    :cond_0
    iget-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v4, "et_put_identify"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 92
    iget-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->etIdentifyNum:Landroid/widget/EditText;

    .line 93
    iget-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->etIdentifyNum:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 94
    iget-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v4, "tv_identify_notify"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 95
    iget-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->tvIdentifyNotify:Landroid/widget/TextView;

    .line 96
    iget-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v4, "smssdk_send_mobile_detail"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 97
    if-lez v0, :cond_1

    .line 98
    invoke-virtual {p0}, Lcn/smssdk/gui/IdentifyNumPage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "text":Ljava/lang/String;
    iget-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->tvIdentifyNotify:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    .end local v1    # "text":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v4, "tv_phone"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 102
    iget-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->tvPhone:Landroid/widget/TextView;

    .line 103
    iget-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->tvPhone:Landroid/widget/TextView;

    iget-object v4, p0, Lcn/smssdk/gui/IdentifyNumPage;->formatedPhone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v4, "tv_unreceive_identify"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 105
    iget-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->tvUnreceiveIdentify:Landroid/widget/TextView;

    .line 106
    iget-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v4, "smssdk_receive_msg"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 107
    if-lez v0, :cond_2

    .line 108
    invoke-virtual {p0}, Lcn/smssdk/gui/IdentifyNumPage;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcn/smssdk/gui/IdentifyNumPage;->time:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "unReceive":Ljava/lang/String;
    iget-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->tvUnreceiveIdentify:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .end local v2    # "unReceive":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->tvUnreceiveIdentify:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->tvUnreceiveIdentify:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 113
    iget-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v4, "iv_clear"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 114
    iget-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->ivClear:Landroid/widget/ImageView;

    .line 115
    iget-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->ivClear:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v4, "btn_sounds"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 117
    invoke-virtual {p0, v0}, Lcn/smssdk/gui/IdentifyNumPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->btnSounds:Landroid/widget/Button;

    .line 118
    iget-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->btnSounds:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    new-instance v3, Lcn/smssdk/gui/IdentifyNumPage$1;

    invoke-direct {v3, p0}, Lcn/smssdk/gui/IdentifyNumPage$1;-><init>(Lcn/smssdk/gui/IdentifyNumPage;)V

    iput-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->handler:Lcn/smssdk/EventHandler;

    .line 134
    iget-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->handler:Lcn/smssdk/EventHandler;

    invoke-static {v3}, Lcn/smssdk/SMSSDK;->registerEventHandler(Lcn/smssdk/EventHandler;)V

    .line 135
    invoke-direct {p0}, Lcn/smssdk/gui/IdentifyNumPage;->countDown()V

    .line 138
    :cond_3
    new-instance v3, Lcn/smssdk/gui/SMSReceiver;

    new-instance v4, Lcn/smssdk/gui/IdentifyNumPage$2;

    invoke-direct {v4, p0}, Lcn/smssdk/gui/IdentifyNumPage$2;-><init>(Lcn/smssdk/gui/IdentifyNumPage;)V

    invoke-direct {v3, v4}, Lcn/smssdk/gui/SMSReceiver;-><init>(Lcn/smssdk/SMSSDK$VerifyCodeReadListener;)V

    iput-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->smsReceiver:Landroid/content/BroadcastReceiver;

    .line 149
    iget-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    iget-object v4, p0, Lcn/smssdk/gui/IdentifyNumPage;->smsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    .line 150
    const-string v6, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 151
    return-void
.end method

.method public onFinish()Z
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->handler:Lcn/smssdk/EventHandler;

    invoke-static {v0}, Lcn/smssdk/SMSSDK;->unregisterEventHandler(Lcn/smssdk/EventHandler;)V

    .line 165
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/smssdk/gui/IdentifyNumPage;->smsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 166
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onFinish()Z

    move-result v0

    return v0
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 551
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 552
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 553
    new-instance v0, Lcn/smssdk/gui/IdentifyNumPage$14;

    invoke-direct {v0, p0}, Lcn/smssdk/gui/IdentifyNumPage$14;-><init>(Lcn/smssdk/gui/IdentifyNumPage;)V

    invoke-virtual {p0, v0}, Lcn/smssdk/gui/IdentifyNumPage;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 558
    const/4 v0, 0x1

    .line 560
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 160
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onPause()V

    .line 161
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 155
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onResume()V

    .line 156
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v3, 0x0

    .line 202
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 203
    iget-object v1, p0, Lcn/smssdk/gui/IdentifyNumPage;->btnSubmit:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 204
    iget-object v1, p0, Lcn/smssdk/gui/IdentifyNumPage;->ivClear:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    iget-object v1, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v2, "smssdk_btn_enable"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 206
    .local v0, "resId":I
    if-lez v0, :cond_0

    .line 207
    iget-object v1, p0, Lcn/smssdk/gui/IdentifyNumPage;->btnSubmit:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 210
    .end local v0    # "resId":I
    :cond_1
    iget-object v1, p0, Lcn/smssdk/gui/IdentifyNumPage;->btnSubmit:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 211
    iget-object v1, p0, Lcn/smssdk/gui/IdentifyNumPage;->ivClear:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 212
    iget-object v1, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v2, "smssdk_btn_disenable"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 213
    .restart local v0    # "resId":I
    if-lez v0, :cond_0

    .line 214
    iget-object v1, p0, Lcn/smssdk/gui/IdentifyNumPage;->btnSubmit:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "formatedPhone"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage;->phone:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcn/smssdk/gui/IdentifyNumPage;->code:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcn/smssdk/gui/IdentifyNumPage;->formatedPhone:Ljava/lang/String;

    .line 72
    return-void
.end method
