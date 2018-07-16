.class public Lcom/smalife/MyPhoneActivity;
.super Landroid/app/Activity;
.source "MyPhoneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/smalife/TelephoneListener;


# static fields
.field public static final B_PHONE_STATE:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field public static final TAG:Ljava/lang/String; = "MyPhone"


# instance fields
.field private call:Landroid/widget/Button;

.field private cancle:Landroid/widget/Button;

.field private mBroadcastReceiver:Lcom/smalife/MyPhoneBroadcastReceiver;

.field private phone:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public GetTelephone(Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p1, "telephony"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/smalife/MyPhoneActivity;->phone:Landroid/telephony/TelephonyManager;

    .line 70
    iget-object v0, p0, Lcom/smalife/MyPhoneActivity;->phone:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public autoAnswerPhone(Landroid/content/Context;)V
    .locals 7
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 78
    .line 79
    :try_start_0
    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 78
    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 80
    .local v4, "telephony":Landroid/telephony/TelephonyManager;
    invoke-static {v4}, Lcom/smalife/PhoneUtils;->getITelephony(Landroid/telephony/TelephonyManager;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 81
    .local v2, "itelephony":Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v2    # "itelephony":Lcom/android/internal/telephony/ITelephony;
    .end local v4    # "telephony":Landroid/telephony/TelephonyManager;
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v1, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-direct {v3, v5, v6}, Landroid/view/KeyEvent;-><init>(II)V

    .line 85
    .local v3, "keyEvent":Landroid/view/KeyEvent;
    const-string v5, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 86
    const-string v5, "android.permission.CALL_PRIVILEGED"

    invoke-virtual {p1, v1, v5}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public autoCallPhone(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    .line 93
    :try_start_0
    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 92
    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 94
    .local v4, "telephony":Landroid/telephony/TelephonyManager;
    invoke-static {v4}, Lcom/smalife/PhoneUtils;->getITelephony(Landroid/telephony/TelephonyManager;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 95
    .local v2, "itelephony":Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v2    # "itelephony":Lcom/android/internal/telephony/ITelephony;
    .end local v4    # "telephony":Landroid/telephony/TelephonyManager;
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v1, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    const/16 v6, 0x4f

    invoke-direct {v3, v5, v6}, Landroid/view/KeyEvent;-><init>(II)V

    .line 99
    .local v3, "keyEvent":Landroid/view/KeyEvent;
    const-string v5, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 100
    const-string v5, "android.permission.CALL_PRIVILEGED"

    invoke-virtual {p1, v1, v5}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 59
    :sswitch_0
    invoke-virtual {p0, p0}, Lcom/smalife/MyPhoneActivity;->autoAnswerPhone(Landroid/content/Context;)V

    goto :goto_0

    .line 62
    :sswitch_1
    invoke-virtual {p0, p0}, Lcom/smalife/MyPhoneActivity;->autoCallPhone(Landroid/content/Context;)V

    goto :goto_0

    .line 57
    :sswitch_data_0
    .sparse-switch
        0x7f0e0083 -> :sswitch_1
        0x7f0e016e -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f030040

    invoke-virtual {p0, v0}, Lcom/smalife/MyPhoneActivity;->setContentView(I)V

    .line 28
    invoke-virtual {p0}, Lcom/smalife/MyPhoneActivity;->registerListener()V

    .line 29
    const v0, 0x7f0e016e

    invoke-virtual {p0, v0}, Lcom/smalife/MyPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/smalife/MyPhoneActivity;->call:Landroid/widget/Button;

    .line 30
    const v0, 0x7f0e0083

    invoke-virtual {p0, v0}, Lcom/smalife/MyPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/smalife/MyPhoneActivity;->cancle:Landroid/widget/Button;

    .line 31
    iget-object v0, p0, Lcom/smalife/MyPhoneActivity;->call:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v0, p0, Lcom/smalife/MyPhoneActivity;->cancle:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 37
    invoke-virtual {p0}, Lcom/smalife/MyPhoneActivity;->unregisterListener()V

    .line 38
    return-void
.end method

.method public registerListener()V
    .locals 2

    .prologue
    .line 42
    new-instance v1, Lcom/smalife/MyPhoneBroadcastReceiver;

    invoke-direct {v1}, Lcom/smalife/MyPhoneBroadcastReceiver;-><init>()V

    iput-object v1, p0, Lcom/smalife/MyPhoneActivity;->mBroadcastReceiver:Lcom/smalife/MyPhoneBroadcastReceiver;

    .line 43
    iget-object v1, p0, Lcom/smalife/MyPhoneActivity;->mBroadcastReceiver:Lcom/smalife/MyPhoneBroadcastReceiver;

    invoke-virtual {v1, p0}, Lcom/smalife/MyPhoneBroadcastReceiver;->setListener(Lcom/smalife/TelephoneListener;)V

    .line 44
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 45
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 47
    iget-object v1, p0, Lcom/smalife/MyPhoneActivity;->mBroadcastReceiver:Lcom/smalife/MyPhoneBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/smalife/MyPhoneActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 48
    return-void
.end method

.method public unregisterListener()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/smalife/MyPhoneActivity;->mBroadcastReceiver:Lcom/smalife/MyPhoneBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/smalife/MyPhoneActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 53
    return-void
.end method
