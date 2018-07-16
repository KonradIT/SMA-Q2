.class public final Lorg/android/agoo/a;
.super Ljava/lang/Object;
.source "AgooSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/android/agoo/a$1;,
        Lorg/android/agoo/a$a;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "AppStore"

.field private static final B:Ljava/lang/String; = "app_device_token"

.field private static final C:Ljava/lang/String; = "app_version"

.field private static final D:Ljava/lang/String; = "app_disable_version"

.field private static final E:Ljava/lang/String; = "agoo_mode"

.field private static final F:Ljava/lang/String; = "agoo_start_time"

.field private static final G:Ljava/lang/String; = "agoo_end_time"

.field private static final H:I = 0x0

.field private static final I:Ljava/lang/String; = "backoff_count"

.field private static final J:Ljava/lang/String; = "app_disable"

.field private static final K:Ljava/lang/String; = "app_election_source"

.field private static final L:Ljava/lang/String; = "app_sudo_pack_timeout"

.field private static final M:Ljava/lang/String; = "app_agoo_multiplex"

.field private static final N:Ljava/lang/String; = "app_agoo_command_uptime_time"

.field private static final O:Ljava/lang/String; = "app_last_register_time "

.field private static final P:Ljava/lang/String; = "app_retry_register"

.field private static final Q:Ljava/lang/String; = "Settings"

.field private static final R:Ljava/lang/String; = "42.120.111.1"

.field private static final S:Ljava/lang/String; = "42.120.80.36"

.field private static final T:Ljava/lang/String; = "110.75.120.15"

.field private static final U:Ljava/lang/String; = "http://api.m.taobao.com/rest/api3.do"

.field private static final V:Ljava/lang/String; = "http://utop.umengcloud.com/rest/api3.do"

.field private static final W:Ljava/lang/String; = "http://api.wapa.taobao.com/rest/api3.do"

.field private static final X:Ljava/lang/String; = "http://api.waptest.taobao.com/rest/api3.do"

.field private static final Y:Ljava/lang/String; = "http://apoll.m.taobao.com"

.field private static final Z:Ljava/lang/String; = "http://upoll.umengcloud.com"

.field public static final a:I = 0x493e0

.field private static final aa:Ljava/lang/String; = "http://apoll.m.taobao.com"

.field private static final ab:Ljava/lang/String; = "http://apoll.m.taobao.com"

.field private static final ac:J = 0x1337897L

.field public static final b:I = 0x78

.field public static final c:I = 0x528

.field public static final d:I = 0x1b7740

.field public static final e:J = 0x2710L

.field public static final f:J = 0x927c0L

.field public static final g:J = 0xea60L

.field public static final h:J = 0x493e0L

.field public static final i:J = 0x4e20L

.field public static final j:J = 0x1d4c0L

.field public static final k:J = 0x4e20L

.field public static final l:J = 0xea60L

.field public static final m:J = 0x7530L

.field public static final n:J = 0x7d0L

.field public static final o:J = 0x7d0L

.field public static final p:J = 0x3e8L

.field public static final q:J = 0x4e20L

.field public static final r:J = 0x2710L

.field public static final s:J = 0xbb8L

.field public static final t:J = 0x1388L

.field public static final u:J = 0x1b7740L

.field public static final v:J = 0x927c0L

.field public static final w:J = 0x3a98L

.field public static final x:J = 0x1388L

.field public static final y:J = 0x1388L

.field public static final z:J = 0x9c40L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 547
    return-void
.end method

.method public static final A(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 452
    invoke-static {p0}, Lorg/android/Config;->isAgooSoSecurityMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static final B(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 456
    .line 458
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 459
    const-string v2, "agoo_mode"

    sget-object v3, Lorg/android/agoo/a$a;->d:Lorg/android/agoo/a$a;

    invoke-virtual {v3}, Lorg/android/agoo/a$a;->a()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 461
    sget-object v2, Lorg/android/agoo/a$a;->d:Lorg/android/agoo/a$a;

    invoke-virtual {v2}, Lorg/android/agoo/a$a;->a()I

    move-result v2

    if-eq v1, v2, :cond_0

    sget-object v2, Lorg/android/agoo/a$a;->e:Lorg/android/agoo/a$a;

    invoke-virtual {v2}, Lorg/android/agoo/a$a;->a()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 466
    :cond_0
    :goto_0
    return v0

    .line 463
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final C(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 470
    invoke-static {p0}, Lorg/android/agoo/a;->D(Landroid/content/Context;)Lorg/android/agoo/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/android/agoo/a$a;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final D(Landroid/content/Context;)Lorg/android/agoo/a$a;
    .locals 3

    .prologue
    .line 506
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 507
    const-string v1, "agoo_mode"

    sget-object v2, Lorg/android/agoo/a$a;->e:Lorg/android/agoo/a$a;

    invoke-virtual {v2}, Lorg/android/agoo/a$a;->a()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 509
    packed-switch v0, :pswitch_data_0

    .line 519
    :pswitch_0
    sget-object v0, Lorg/android/agoo/a$a;->e:Lorg/android/agoo/a$a;

    .line 524
    :goto_0
    return-object v0

    .line 511
    :pswitch_1
    sget-object v0, Lorg/android/agoo/a$a;->a:Lorg/android/agoo/a$a;

    goto :goto_0

    .line 513
    :pswitch_2
    sget-object v0, Lorg/android/agoo/a$a;->b:Lorg/android/agoo/a$a;

    goto :goto_0

    .line 515
    :pswitch_3
    sget-object v0, Lorg/android/agoo/a$a;->c:Lorg/android/agoo/a$a;

    goto :goto_0

    .line 517
    :pswitch_4
    sget-object v0, Lorg/android/agoo/a$a;->d:Lorg/android/agoo/a$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 521
    :catch_0
    move-exception v0

    .line 524
    sget-object v0, Lorg/android/agoo/a$a;->e:Lorg/android/agoo/a$a;

    goto :goto_0

    .line 509
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static final a()J
    .locals 2

    .prologue
    .line 544
    const-wide/32 v0, 0x1337897

    return-wide v0
.end method

.method private static final a(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 272
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 275
    :goto_0
    return-object v0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    const-string v0, "none"

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 93
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 95
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-object v0

    .line 96
    :catch_0
    move-exception v0

    .line 98
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 220
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 221
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 222
    const-string v1, "backoff_count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 223
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    const-string v1, "Settings"

    const-string v2, "setBackOffCount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 157
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 158
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 159
    const-string v1, "app_sudo_pack_timeout"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 160
    const-string v1, "app_election_source"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 161
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    invoke-static {p0, p1}, Lorg/android/Config;->setXToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public static final a(Landroid/content/Context;ZJ)V
    .locals 2

    .prologue
    .line 374
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 375
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 376
    const-string v1, "app_agoo_multiplex"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 377
    const-string v1, "app_agoo_command_uptime_time"

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 378
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :goto_0
    return-void

    .line 379
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;ZZ)V
    .locals 1

    .prologue
    .line 476
    if-eqz p0, :cond_0

    .line 477
    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/android/Config;->setDebug(Landroid/content/Context;ZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 479
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;Z)Z
    .locals 6

    .prologue
    const/high16 v5, -0x80000000

    const/4 v1, 0x0

    .line 349
    .line 351
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 352
    const-string v0, "app_disable"

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 354
    if-nez p1, :cond_1

    .line 368
    :cond_0
    :goto_0
    return v0

    .line 357
    :cond_1
    :try_start_1
    const-string v3, "app_disable_version"

    const/high16 v4, -0x80000000

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 359
    invoke-static {p0}, Lorg/android/Config;->getAppVersion(Landroid/content/Context;)I

    move-result v3

    .line 360
    if-eq v2, v5, :cond_0

    if-eq v2, v3, :cond_0

    .line 361
    invoke-static {p0}, Lorg/android/agoo/a;->u(Landroid/content/Context;)V

    .line 362
    invoke-static {p0}, Lorg/android/agoo/a;->e(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    .line 363
    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static final b(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 104
    :try_start_0
    const-string v1, "AppStore"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    .line 106
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 303
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 304
    invoke-static {p0}, Lorg/android/Config;->getAppVersion(Landroid/content/Context;)I

    move-result v1

    .line 305
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 306
    const-string v2, "app_device_token"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 307
    const-string v2, "app_version"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 308
    const-string v1, "app_last_register_time "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 310
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final c(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 117
    invoke-static {p0}, Lorg/android/Config;->clearXToken(Landroid/content/Context;)V

    .line 118
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 414
    invoke-static {p0, p1}, Lorg/android/Config;->setPushUserToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method public static final d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    invoke-static {p0}, Lorg/android/Config;->getXToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 486
    if-eqz p0, :cond_0

    .line 487
    :try_start_0
    invoke-static {p0, p1}, Lorg/android/Config;->setUTClassName(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 489
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final e(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 125
    invoke-static {p0}, Lorg/android/Config;->clear(Landroid/content/Context;)V

    .line 126
    return-void
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 496
    if-eqz p0, :cond_0

    .line 497
    :try_start_0
    invoke-static {p0, p1}, Lorg/android/Config;->setAgooGroup(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 499
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final f(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    invoke-static {p0}, Lorg/android/Config;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final g(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    invoke-static {p0}, Lorg/android/Config;->getTtId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final h(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    invoke-static {p0}, Lorg/android/Config;->getAppSecret(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final i(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 142
    return-object v0
.end method

.method public static final j(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 146
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final k(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    invoke-static {p0}, Lorg/android/Config;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final l(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 169
    const-string v0, "local"

    .line 171
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 172
    const-string v2, "app_election_source"

    const-string v3, "local"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    .line 173
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final m(Landroid/content/Context;)J
    .locals 6

    .prologue
    const-wide/16 v0, -0x1

    .line 180
    .line 182
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 183
    const-string v3, "app_sudo_pack_timeout"

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 187
    :goto_0
    return-wide v0

    .line 184
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static final n(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 202
    .line 204
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 205
    const-string v2, "backoff_count"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 211
    :goto_0
    return v0

    .line 207
    :catch_0
    move-exception v1

    .line 208
    const-string v2, "Settings"

    const-string v3, "getBackoffCount"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static final o(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/android/agoo/a;->a(Landroid/content/Context;I)V

    .line 216
    return-void
.end method

.method public static final p(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 230
    .line 232
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 233
    const-string v1, "app_retry_register"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 235
    add-int/lit8 v1, v1, 0x1

    .line 236
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 237
    const-string v2, "app_retry_register"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 238
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    const-string v1, "Settings"

    const-string v2, "setRetryRegisterCount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static final q(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 245
    .line 247
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 248
    const-string v2, "app_retry_register"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 254
    :goto_0
    return v0

    .line 250
    :catch_0
    move-exception v1

    .line 251
    const-string v2, "Settings"

    const-string v3, "getRetryRegisterCount"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static final r(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 258
    const/4 v0, 0x0

    .line 260
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 261
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 262
    const-string v2, "app_retry_register"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 263
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 265
    const-string v1, "Settings"

    const-string v2, "RestRetryRegisterCount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static final s(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 280
    const/4 v0, 0x1

    .line 282
    const-string v1, ""

    .line 284
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 285
    const-string v3, "app_last_register_time "

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 286
    cmp-long v4, v2, v6

    if-eqz v4, :cond_0

    .line 287
    invoke-static {v2, v3}, Lorg/android/agoo/a;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 289
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 290
    invoke-static {v4, v5}, Lorg/android/agoo/a;->a(J)Ljava/lang/String;

    move-result-object v4

    .line 291
    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    const/4 v0, 0x0

    .line 297
    :cond_1
    :goto_0
    return v0

    .line 294
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final t(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 318
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 319
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 320
    const-string v1, "app_disable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 321
    invoke-static {p0}, Lorg/android/Config;->getAppVersion(Landroid/content/Context;)I

    move-result v1

    .line 322
    const-string v2, "app_disable_version"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 323
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_0
    return-void

    .line 324
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final u(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 332
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 333
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 334
    const-string v1, "app_disable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 335
    invoke-static {p0}, Lorg/android/Config;->getAppVersion(Landroid/content/Context;)I

    move-result v1

    .line 336
    const-string v2, "app_disable_version"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 337
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_0
    return-void

    .line 338
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final v(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/android/agoo/a;->a(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static final w(Landroid/content/Context;)Z
    .locals 10

    .prologue
    const/high16 v7, -0x80000000

    const-wide/16 v8, -0x1

    const/4 v1, 0x1

    .line 385
    .line 387
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 388
    const-string v0, "app_agoo_multiplex"

    const/4 v3, 0x1

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 390
    :try_start_1
    const-string v3, "app_agoo_command_uptime_time"

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 392
    const-string v3, "app_disable_version"

    const/high16 v6, -0x80000000

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 394
    invoke-static {p0}, Lorg/android/Config;->getAppVersion(Landroid/content/Context;)I

    move-result v3

    .line 395
    if-eq v2, v7, :cond_1

    if-eq v2, v3, :cond_1

    .line 396
    const/4 v2, 0x1

    const-wide/16 v4, -0x1

    invoke-static {p0, v2, v4, v5}, Lorg/android/agoo/a;->a(Landroid/content/Context;ZJ)V

    move v0, v1

    .line 405
    :cond_0
    :goto_0
    return v0

    .line 399
    :cond_1
    cmp-long v2, v4, v8

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    cmp-long v2, v4, v2

    if-gtz v2, :cond_0

    :cond_2
    move v0, v1

    .line 400
    goto :goto_0

    .line 402
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static final x(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    invoke-static {p0}, Lorg/android/Config;->getPushUserToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final y(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 418
    invoke-static {p0}, Lorg/android/Config;->clearPushUserToken(Landroid/content/Context;)V

    .line 419
    return-void
.end method

.method public static final z(Landroid/content/Context;)J
    .locals 8

    .prologue
    const-wide/16 v0, -0x1

    const/4 v6, -0x1

    .line 422
    .line 424
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 425
    const-string v3, "agoo_start_time"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 426
    const-string v4, "agoo_end_time"

    const/4 v5, -0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 427
    if-eq v3, v6, :cond_0

    if-eq v2, v6, :cond_0

    .line 428
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 429
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 430
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 431
    const/16 v6, 0xc

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 432
    const/16 v7, 0xd

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 433
    mul-int/lit8 v5, v5, 0x3c

    mul-int/lit8 v5, v5, 0x3c

    mul-int/lit8 v6, v6, 0x3c

    add-int/2addr v5, v6

    add-int/2addr v5, v7

    .line 434
    if-ge v5, v3, :cond_1

    .line 435
    const/16 v2, 0xd

    sub-int/2addr v3, v5

    invoke-virtual {v4, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 441
    :goto_0
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 447
    :cond_0
    :goto_1
    return-wide v0

    .line 436
    :cond_1
    if-le v5, v2, :cond_0

    .line 437
    const/16 v2, 0xd

    sub-int/2addr v3, v5

    const v5, 0x15180

    add-int/2addr v3, v5

    invoke-virtual {v4, v2, v3}, Ljava/util/Calendar;->add(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 444
    :catch_0
    move-exception v2

    goto :goto_1
.end method
