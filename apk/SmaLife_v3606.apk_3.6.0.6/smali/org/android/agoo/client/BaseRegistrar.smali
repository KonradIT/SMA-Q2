.class public Lorg/android/agoo/client/BaseRegistrar;
.super Ljava/lang/Object;
.source "BaseRegistrar.java"


# static fields
.field private static final AGOO_COMMAND_REGISTRATION:Ljava/lang/String; = "register"

.field private static final AGOO_COMMAND_UNREGISTRATION:Ljava/lang/String; = "unregister"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static final baseRegister(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lorg/android/agoo/client/BaseRegistrar;->baseRegister(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 37
    return-void
.end method

.method protected static final baseRegister(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 43
    if-eqz p0, :cond_1

    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/android/Config;->setAgooSecurityMode(Landroid/content/Context;Z)V

    .line 48
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/android/Config;->setAppInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v0, "register"

    invoke-static {p0, v0}, Lorg/android/agoo/intent/IntentUtil;->createComandIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_1
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final checkDevice(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method protected static final getMtopService(Landroid/content/Context;)Lorg/android/agoo/IMtopService;
    .locals 2

    .prologue
    .line 22
    const/4 v1, 0x0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    :try_start_0
    const-string v0, "org.android.agoo.impl.MtopService"

    invoke-static {p0, v0}, Lorg/android/agoo/proxy/ProxyFactroy;->getInstance(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/android/agoo/IMtopService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v1, v0

    .line 31
    :goto_1
    return-object v1

    .line 28
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static final getRegistrationId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 77
    if-eqz p0, :cond_0

    .line 78
    :try_start_0
    invoke-static {p0}, Lorg/android/Config;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 83
    :cond_0
    :goto_0
    return-object v0

    .line 80
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final isRegistered(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 88
    if-eqz p0, :cond_0

    .line 89
    :try_start_0
    invoke-static {p0}, Lorg/android/Config;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 92
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final pingMessage(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 196
    if-eqz p0, :cond_0

    .line 197
    :try_start_0
    invoke-static {p0, p1}, Lorg/android/Config;->setPingMessage(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final sendAsynMtop(Landroid/content/Context;Lorg/android/agoo/client/MtopProxyRequest;)V
    .locals 1

    .prologue
    .line 157
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/client/BaseRegistrar;->getMtopService(Landroid/content/Context;)Lorg/android/agoo/IMtopService;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_0

    .line 159
    invoke-interface {v0, p0, p1}, Lorg/android/agoo/IMtopService;->sendMtop(Landroid/content/Context;Lorg/android/agoo/client/MtopProxyRequest;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final sendAsynMtop(Landroid/content/Context;Lorg/android/agoo/client/MtopProxyRequest;Lorg/android/agoo/client/MtopProxyResponseHandler;)V
    .locals 1

    .prologue
    .line 143
    if-eqz p0, :cond_0

    .line 144
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/client/BaseRegistrar;->getMtopService(Landroid/content/Context;)Lorg/android/agoo/IMtopService;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v0, p0, p1, p2}, Lorg/android/agoo/IMtopService;->sendMtop(Landroid/content/Context;Lorg/android/agoo/client/MtopProxyRequest;Lorg/android/agoo/client/MtopProxyResponseHandler;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final sendSynMtop(Landroid/content/Context;Lorg/android/agoo/client/MtopProxyRequest;)V
    .locals 1

    .prologue
    .line 169
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/client/BaseRegistrar;->getMtopService(Landroid/content/Context;)Lorg/android/agoo/IMtopService;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_0

    .line 171
    invoke-interface {v0, p0, p1}, Lorg/android/agoo/IMtopService;->getV3(Landroid/content/Context;Lorg/android/agoo/client/MtopProxyRequest;)Lorg/android/agoo/client/MtopSyncResult;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected static final set(Landroid/content/Context;ZZZJZ)V
    .locals 0

    .prologue
    .line 180
    invoke-static/range {p0 .. p6}, Lorg/android/Config;->set(Landroid/content/Context;ZZZJZ)V

    .line 181
    return-void
.end method

.method protected static setAgooGroup(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 100
    if-eqz p0, :cond_0

    .line 101
    :try_start_0
    invoke-static {p0, p1}, Lorg/android/Config;->setAgooGroup(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final setAgooMode(Landroid/content/Context;Lorg/android/agoo/client/Mode;)V
    .locals 1

    .prologue
    .line 131
    if-eqz p0, :cond_0

    .line 132
    :try_start_0
    invoke-virtual {p1}, Lorg/android/agoo/client/Mode;->getValue()I

    move-result v0

    invoke-static {p0, v0}, Lorg/android/Config;->setAgooMode(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final setAutoUpdate(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 186
    if-eqz p0, :cond_0

    .line 187
    :try_start_0
    invoke-static {p0, p1}, Lorg/android/Config;->setIfNeedAutoUpdate(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final setDebug(Landroid/content/Context;ZZ)V
    .locals 1

    .prologue
    .line 121
    if-eqz p0, :cond_0

    .line 122
    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/android/Config;->setDebug(Landroid/content/Context;ZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final setServiceProtect(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 206
    if-eqz p0, :cond_0

    .line 207
    :try_start_0
    invoke-static {p0, p1}, Lorg/android/Config;->setServiceProtect(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected static final setUTVersion(Landroid/content/Context;Lorg/android/agoo/client/UT;)V
    .locals 1

    .prologue
    .line 110
    if-eqz p0, :cond_0

    .line 111
    :try_start_0
    invoke-virtual {p1}, Lorg/android/agoo/client/UT;->getUTClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/android/Config;->setUTClassName(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static unregister(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 62
    if-eqz p0, :cond_0

    .line 63
    :try_start_0
    const-string v0, "unregister"

    invoke-static {p0, v0}, Lorg/android/agoo/intent/IntentUtil;->createComandIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    goto :goto_0
.end method
