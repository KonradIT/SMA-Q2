.class public Lcom/smalife/SMSReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SMSReceiver.java"


# static fields
.field public static final SMS_DELIVER_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_DELIVER"

.field public static final SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final TAG:Ljava/lang/String; = "SMSReceiver"


# instance fields
.field private msg_notic:Z

.field private preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smalife/SMSReceiver;->msg_notic:Z

    .line 13
    return-void
.end method


# virtual methods
.method public final getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    const-string v6, "pdus"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 45
    .local v1, "messages":[Ljava/lang/Object;
    if-nez v1, :cond_1

    const/4 v2, 0x0

    .line 59
    :cond_0
    return-object v2

    .line 46
    :cond_1
    array-length v6, v1

    new-array v4, v6, [[B

    .line 47
    .local v4, "pduObjs":[[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, v1

    if-lt v0, v6, :cond_2

    .line 51
    array-length v6, v4

    new-array v5, v6, [[B

    .line 52
    .local v5, "pdus":[[B
    array-length v3, v5

    .line 53
    .local v3, "pduCount":I
    new-array v2, v3, [Landroid/telephony/SmsMessage;

    .line 54
    .local v2, "msgs":[Landroid/telephony/SmsMessage;
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_0

    .line 56
    aget-object v6, v4, v0

    aput-object v6, v5, v0

    .line 57
    aget-object v6, v5, v0

    invoke-static {v6}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v6

    aput-object v6, v2, v0

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 49
    .end local v2    # "msgs":[Landroid/telephony/SmsMessage;
    .end local v3    # "pduCount":I
    .end local v5    # "pdus":[[B
    :cond_2
    aget-object v6, v1, v0

    check-cast v6, [B

    aput-object v6, v4, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 26
    const-string v4, "sma"

    const/4 v5, 0x2

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/smalife/SMSReceiver;->preferences:Landroid/content/SharedPreferences;

    .line 27
    iget-object v4, p0, Lcom/smalife/SMSReceiver;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "msg_notic"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/smalife/SMSReceiver;->msg_notic:Z

    .line 28
    iget-boolean v4, p0, Lcom/smalife/SMSReceiver;->msg_notic:Z

    if-eqz v4, :cond_0

    .line 29
    new-instance v2, Landroid/content/Intent;

    const-string v4, "AskAction"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    .local v2, "msgIntent":Landroid/content/Intent;
    const-string v4, "action_key"

    const/16 v5, 0x21

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 31
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 33
    .end local v2    # "msgIntent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, p2}, Lcom/smalife/SMSReceiver;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 34
    .local v1, "messages":[Landroid/telephony/SmsMessage;
    if-nez v1, :cond_2

    .line 40
    .end local v1    # "messages":[Landroid/telephony/SmsMessage;
    :cond_1
    return-void

    .line 35
    .restart local v1    # "messages":[Landroid/telephony/SmsMessage;
    :cond_2
    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 37
    .local v0, "message":Landroid/telephony/SmsMessage;
    const-string v5, "SMSReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
