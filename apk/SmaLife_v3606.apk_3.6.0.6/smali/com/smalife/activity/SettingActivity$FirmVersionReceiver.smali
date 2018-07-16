.class Lcom/smalife/activity/SettingActivity$FirmVersionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/SettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FirmVersionReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/SettingActivity;


# direct methods
.method private constructor <init>(Lcom/smalife/activity/SettingActivity;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/smalife/activity/SettingActivity$FirmVersionReceiver;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smalife/activity/SettingActivity;Lcom/smalife/activity/SettingActivity$FirmVersionReceiver;)V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0, p1}, Lcom/smalife/activity/SettingActivity$FirmVersionReceiver;-><init>(Lcom/smalife/activity/SettingActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v9, 0x7f0901c8

    const v8, 0x7f0901c7

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 312
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity$FirmVersionReceiver;->this$0:Lcom/smalife/activity/SettingActivity;

    iget-object v2, v2, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v2}, Lcom/smalife/MyApplication;->getFirmWareVersion()Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "wareVersion":Ljava/lang/String;
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity$FirmVersionReceiver;->this$0:Lcom/smalife/activity/SettingActivity;

    iget-object v2, v2, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v2}, Lcom/smalife/MyApplication;->getFirmType()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "firmType":Ljava/lang/String;
    const-string v2, "SM07"

    iget-object v3, p0, Lcom/smalife/activity/SettingActivity$FirmVersionReceiver;->this$0:Lcom/smalife/activity/SettingActivity;

    iget-object v3, v3, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    .line 315
    invoke-virtual {v3}, Lcom/smalife/MyApplication;->getWatchType()Ljava/lang/String;

    move-result-object v3

    .line 314
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 315
    if-eqz v2, :cond_4

    .line 316
    const-string v2, "PAH8002"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 317
    const-string v2, "1.1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    .line 318
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity$FirmVersionReceiver;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v2}, Lcom/smalife/activity/SettingActivity;->access$14(Lcom/smalife/activity/SettingActivity;)Landroid/widget/TextView;

    move-result-object v2

    .line 319
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    iget-object v4, p0, Lcom/smalife/activity/SettingActivity$FirmVersionReceiver;->this$0:Lcom/smalife/activity/SettingActivity;

    new-array v5, v5, [Ljava/lang/Object;

    .line 321
    aput-object v1, v5, v6

    .line 322
    const-string v6, "1.1"

    aput-object v6, v5, v7

    .line 320
    invoke-virtual {v4, v9, v5}, Lcom/smalife/activity/SettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 322
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 319
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity$FirmVersionReceiver;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v2}, Lcom/smalife/activity/SettingActivity;->access$14(Lcom/smalife/activity/SettingActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 325
    iget-object v4, p0, Lcom/smalife/activity/SettingActivity$FirmVersionReceiver;->this$0:Lcom/smalife/activity/SettingActivity;

    new-array v5, v7, [Ljava/lang/Object;

    .line 326
    aput-object v1, v5, v6

    .line 325
    invoke-virtual {v4, v8, v5}, Lcom/smalife/activity/SettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 326
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 324
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 329
    :cond_2
    const-string v2, "2.5"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    .line 330
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity$FirmVersionReceiver;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v2}, Lcom/smalife/activity/SettingActivity;->access$14(Lcom/smalife/activity/SettingActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 331
    iget-object v4, p0, Lcom/smalife/activity/SettingActivity$FirmVersionReceiver;->this$0:Lcom/smalife/activity/SettingActivity;

    new-array v5, v5, [Ljava/lang/Object;

    .line 332
    aput-object v1, v5, v6

    const-string v6, "2.5"

    aput-object v6, v5, v7

    .line 331
    invoke-virtual {v4, v9, v5}, Lcom/smalife/activity/SettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 332
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 330
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 334
    :cond_3
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity$FirmVersionReceiver;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v2}, Lcom/smalife/activity/SettingActivity;->access$14(Lcom/smalife/activity/SettingActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 335
    iget-object v4, p0, Lcom/smalife/activity/SettingActivity$FirmVersionReceiver;->this$0:Lcom/smalife/activity/SettingActivity;

    new-array v5, v7, [Ljava/lang/Object;

    .line 336
    aput-object v1, v5, v6

    .line 335
    invoke-virtual {v4, v8, v5}, Lcom/smalife/activity/SettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 336
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 334
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 339
    :cond_4
    const-string v2, "SM05"

    iget-object v3, p0, Lcom/smalife/activity/SettingActivity$FirmVersionReceiver;->this$0:Lcom/smalife/activity/SettingActivity;

    iget-object v3, v3, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    .line 340
    invoke-virtual {v3}, Lcom/smalife/MyApplication;->getWatchType()Ljava/lang/String;

    move-result-object v3

    .line 339
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 340
    if-eqz v2, :cond_0

    .line 341
    const-string v2, "1.7"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 342
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity$FirmVersionReceiver;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v2}, Lcom/smalife/activity/SettingActivity;->access$14(Lcom/smalife/activity/SettingActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 343
    iget-object v4, p0, Lcom/smalife/activity/SettingActivity$FirmVersionReceiver;->this$0:Lcom/smalife/activity/SettingActivity;

    new-array v5, v7, [Ljava/lang/Object;

    .line 344
    aput-object v1, v5, v6

    .line 343
    invoke-virtual {v4, v8, v5}, Lcom/smalife/activity/SettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 344
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 342
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 346
    :cond_5
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity$FirmVersionReceiver;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v2}, Lcom/smalife/activity/SettingActivity;->access$14(Lcom/smalife/activity/SettingActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 347
    iget-object v4, p0, Lcom/smalife/activity/SettingActivity$FirmVersionReceiver;->this$0:Lcom/smalife/activity/SettingActivity;

    new-array v5, v5, [Ljava/lang/Object;

    .line 348
    aput-object v1, v5, v6

    const-string v6, "1.7"

    aput-object v6, v5, v7

    .line 347
    invoke-virtual {v4, v9, v5}, Lcom/smalife/activity/SettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 348
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 346
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
