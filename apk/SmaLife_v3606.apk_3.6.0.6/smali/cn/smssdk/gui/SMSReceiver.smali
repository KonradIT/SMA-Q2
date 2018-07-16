.class public Lcn/smssdk/gui/SMSReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SMSReceiver.java"


# static fields
.field private static final ACTION_SMS_RECEIVER:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"


# instance fields
.field private listener:Lcn/smssdk/SMSSDK$VerifyCodeReadListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 33
    const-string v0, "Please dynamically register an instance of this class with Context.registerReceiver.\r\nIf not, the SMSSDK.VerifyCodeReadListener will be null!"

    .line 35
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "cn.smssdk.gui.SMSReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void
.end method

.method public constructor <init>(Lcn/smssdk/SMSSDK$VerifyCodeReadListener;)V
    .locals 0
    .param p1, "verifyCodeReadListener"    # Lcn/smssdk/SMSSDK$VerifyCodeReadListener;

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 24
    iput-object p1, p0, Lcn/smssdk/gui/SMSReceiver;->listener:Lcn/smssdk/SMSSDK$VerifyCodeReadListener;

    .line 25
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    const-string v5, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 42
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 43
    const-string v5, "pdus"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 44
    .local v2, "pdus":[Ljava/lang/Object;
    array-length v5, v2

    new-array v4, v5, [Landroid/telephony/SmsMessage;

    .line 45
    .local v4, "smsArr":[Landroid/telephony/SmsMessage;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v2

    if-lt v1, v5, :cond_1

    .line 49
    array-length v6, v4

    const/4 v5, 0x0

    :goto_1
    if-lt v5, v6, :cond_2

    .line 56
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "i":I
    .end local v2    # "pdus":[Ljava/lang/Object;
    .end local v4    # "smsArr":[Landroid/telephony/SmsMessage;
    :cond_0
    return-void

    .line 46
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "i":I
    .restart local v2    # "pdus":[Ljava/lang/Object;
    .restart local v4    # "smsArr":[Landroid/telephony/SmsMessage;
    :cond_1
    aget-object v5, v2, v1

    check-cast v5, [B

    invoke-static {v5}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v5

    aput-object v5, v4, v1

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    :cond_2
    aget-object v3, v4, v5

    .line 50
    .local v3, "sms":Landroid/telephony/SmsMessage;
    if-eqz v3, :cond_3

    .line 51
    iget-object v7, p0, Lcn/smssdk/gui/SMSReceiver;->listener:Lcn/smssdk/SMSSDK$VerifyCodeReadListener;

    invoke-static {v3, v7}, Lcn/smssdk/SMSSDK;->readVerificationCode(Landroid/telephony/SmsMessage;Lcn/smssdk/SMSSDK$VerifyCodeReadListener;)V

    .line 49
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method
