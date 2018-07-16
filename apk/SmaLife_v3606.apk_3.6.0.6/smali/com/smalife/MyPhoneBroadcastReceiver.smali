.class public Lcom/smalife/MyPhoneBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MyPhoneBroadcastReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MyPhone"


# instance fields
.field private listener:Lcom/smalife/TelephoneListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public doReceivePhone(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    const-string v3, "incoming_number"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "phoneNumber":Ljava/lang/String;
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 42
    .local v2, "telephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    .line 44
    .local v1, "state":I
    packed-switch v1, :pswitch_data_0

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 46
    :pswitch_0
    const-string v3, "MyPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[Broadcast]\u7b49\u5f85\u63a5\u7535\u8bdd="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v3, p0, Lcom/smalife/MyPhoneBroadcastReceiver;->listener:Lcom/smalife/TelephoneListener;

    if-eqz v3, :cond_0

    .line 48
    iget-object v3, p0, Lcom/smalife/MyPhoneBroadcastReceiver;->listener:Lcom/smalife/TelephoneListener;

    invoke-interface {v3, v2}, Lcom/smalife/TelephoneListener;->GetTelephone(Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;

    goto :goto_0

    .line 52
    :pswitch_1
    const-string v3, "MyPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[Broadcast]\u7535\u8bdd\u6302\u65ad="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 55
    :pswitch_2
    const-string v3, "MyPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[Broadcast]\u901a\u8bdd\u4e2d="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getListener()Lcom/smalife/TelephoneListener;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/smalife/MyPhoneBroadcastReceiver;->listener:Lcom/smalife/TelephoneListener;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "action":Ljava/lang/String;
    const-string v1, "MyPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Broadcast]"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    const-string v1, "MyPhone"

    const-string v2, "[Broadcast]PHONE_STATE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/smalife/MyPhoneBroadcastReceiver;->doReceivePhone(Landroid/content/Context;Landroid/content/Intent;)V

    .line 31
    :cond_0
    return-void
.end method

.method public setListener(Lcom/smalife/TelephoneListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/smalife/TelephoneListener;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/smalife/MyPhoneBroadcastReceiver;->listener:Lcom/smalife/TelephoneListener;

    .line 19
    return-void
.end method
