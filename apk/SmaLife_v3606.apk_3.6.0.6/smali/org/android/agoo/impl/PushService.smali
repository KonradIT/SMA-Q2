.class public Lorg/android/agoo/impl/PushService;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/umeng/message/proguard/aO;
.implements Lorg/android/agoo/IPushService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/android/agoo/impl/PushService$b;,
        Lorg/android/agoo/impl/PushService$a;
    }
.end annotation


# static fields
.field private static B:Lcom/umeng/message/proguard/aX; = null

.field private static volatile C:Z = false

.field private static final a:Ljava/lang/String; = "PushService"

.field private static final b:I = 0x2b80359

.field private static final c:Ljava/lang/String; = "agoo_action_re_election"

.field private static final d:I = 0x0

.field private static final e:Ljava/lang/String; = "cockroach"

.field private static final f:Ljava/lang/String; = "cockroach-PPreotect"

.field private static final g:Ljava/lang/String; = "pack"

.field private static final h:I = 0x0

.field private static final i:I = 0x1

.field private static final j:I = 0x2

.field private static final k:I = 0x3

.field private static final l:I = 0x4

.field private static final m:I = 0x5


# instance fields
.field private final A:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile D:Lorg/android/agoo/callback/IServiceCallBack;

.field private final E:Landroid/content/BroadcastReceiver;

.field private final F:Lorg/android/agoo/service/IMessageService$Stub;

.field private n:Landroid/content/Context;

.field private o:Landroid/os/HandlerThread;

.field private p:Landroid/os/Handler;

.field private q:Z

.field private r:Landroid/app/PendingIntent;

.field private s:Z

.field private t:Lcom/umeng/message/proguard/aR;

.field private u:J

.field private v:Landroid/app/AlarmManager;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v1, p0, Lorg/android/agoo/impl/PushService;->o:Landroid/os/HandlerThread;

    .line 57
    iput-object v1, p0, Lorg/android/agoo/impl/PushService;->p:Landroid/os/Handler;

    .line 58
    iput-boolean v2, p0, Lorg/android/agoo/impl/PushService;->q:Z

    .line 59
    iput-object v1, p0, Lorg/android/agoo/impl/PushService;->r:Landroid/app/PendingIntent;

    .line 60
    iput-boolean v2, p0, Lorg/android/agoo/impl/PushService;->s:Z

    .line 63
    iput-object v1, p0, Lorg/android/agoo/impl/PushService;->v:Landroid/app/AlarmManager;

    .line 64
    iput-object v1, p0, Lorg/android/agoo/impl/PushService;->w:Ljava/lang/String;

    iput-object v1, p0, Lorg/android/agoo/impl/PushService;->x:Ljava/lang/String;

    iput-object v1, p0, Lorg/android/agoo/impl/PushService;->y:Ljava/lang/String;

    iput-object v1, p0, Lorg/android/agoo/impl/PushService;->z:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/android/agoo/impl/PushService;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 237
    iput-object v1, p0, Lorg/android/agoo/impl/PushService;->D:Lorg/android/agoo/callback/IServiceCallBack;

    .line 567
    new-instance v0, Lorg/android/agoo/impl/PushService$2;

    invoke-direct {v0, p0}, Lorg/android/agoo/impl/PushService$2;-><init>(Lorg/android/agoo/impl/PushService;)V

    iput-object v0, p0, Lorg/android/agoo/impl/PushService;->E:Landroid/content/BroadcastReceiver;

    .line 654
    new-instance v0, Lorg/android/agoo/impl/PushService$3;

    invoke-direct {v0, p0}, Lorg/android/agoo/impl/PushService$3;-><init>(Lorg/android/agoo/impl/PushService;)V

    iput-object v0, p0, Lorg/android/agoo/impl/PushService;->F:Lorg/android/agoo/service/IMessageService$Stub;

    .line 750
    return-void
.end method

.method private static final a(II)I
    .locals 2

    .prologue
    .line 532
    and-int/lit16 v0, p0, 0xff

    const v1, 0xffff

    and-int/2addr v1, p1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x0

    return v0
.end method

.method static synthetic a(Lorg/android/agoo/impl/PushService;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    return-object v0
.end method

.method private static final a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 538
    :try_start_0
    invoke-static {p0}, Lorg/android/Config;->getServiceProtect(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    if-eqz p0, :cond_0

    .line 540
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 541
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 542
    const/4 v0, 0x2

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lorg/android/agoo/impl/PushService;->a(II)I

    .line 543
    invoke-static {p0}, Lorg/android/agoo/intent/IntentUtil;->getAgooCockroach(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 544
    const-string v1, "PushService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerNotKill--->[current-thread-name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 550
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;II)V
    .locals 5

    .prologue
    .line 174
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-static {v1}, Lorg/android/agoo/intent/IntentUtil;->getAgooStart(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 176
    const-string v2, "PushService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const-string v0, "method"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    invoke-virtual {p0}, Lorg/android/agoo/impl/PushService;->c()V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-direct {p0}, Lorg/android/agoo/impl/PushService;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/android/agoo/impl/PushService;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    goto :goto_0

    .line 192
    :cond_2
    invoke-virtual {p0}, Lorg/android/agoo/impl/PushService;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 398
    :try_start_0
    iget-boolean v0, p0, Lorg/android/agoo/impl/PushService;->s:Z

    if-eqz v0, :cond_0

    .line 433
    :goto_0
    return-void

    .line 401
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/agoo/impl/PushService;->s:Z

    .line 402
    new-instance v6, Landroid/content/Intent;

    const-string v0, "agoo_action_re_election"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    const-string v0, "eventId"

    invoke-virtual {v6, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 406
    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x528

    .line 408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v0, v0

    const-wide/16 v4, 0x3c

    mul-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    add-long/2addr v0, v2

    .line 410
    iget-object v2, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-static {v2}, Lorg/android/agoo/a;->m(Landroid/content/Context;)J

    move-result-wide v4

    .line 411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v8, 0x1b7740

    add-long/2addr v2, v8

    cmp-long v2, v4, v2

    if-lez v2, :cond_2

    move-wide v2, v4

    .line 414
    :goto_1
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lorg/android/agoo/impl/PushService;->v:Landroid/app/AlarmManager;

    .line 416
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->r:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->r:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 418
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->v:Landroid/app/AlarmManager;

    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->r:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 420
    :cond_1
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    const v1, 0x2b80359

    const/high16 v7, 0x8000000

    invoke-static {v0, v1, v6, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lorg/android/agoo/impl/PushService;->r:Landroid/app/PendingIntent;

    .line 423
    const-string v0, "PushService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "election next time[current-thread-name:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "]["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/bd;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "][timeout:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "] "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->v:Landroid/app/AlarmManager;

    const/4 v1, 0x1

    iget-object v4, p0, Lorg/android/agoo/impl/PushService;->r:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 429
    :catch_0
    move-exception v0

    .line 430
    const-string v1, "PushService"

    const-string v2, "ReElection start"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/aK;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_2
    move-wide v2, v0

    goto :goto_1
.end method

.method static synthetic b(Lorg/android/agoo/impl/PushService;)J
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lorg/android/agoo/impl/PushService;->u:J

    return-wide v0
.end method

.method private static final b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 557
    :try_start_0
    invoke-static {p0}, Lorg/android/Config;->getServiceProtect(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    sget-object v0, Lorg/android/agoo/impl/PushService;->B:Lcom/umeng/message/proguard/aX;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/aX;->b()V

    .line 559
    const-string v0, "PushService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterNotKill--->[current-thread-name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 562
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 437
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->t:Lcom/umeng/message/proguard/aR;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->t:Lcom/umeng/message/proguard/aR;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/aR;->e()V

    .line 440
    :cond_0
    invoke-direct {p0, p1}, Lorg/android/agoo/impl/PushService;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :goto_0
    return-void

    .line 441
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic c(Lorg/android/agoo/impl/PushService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->p:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lorg/android/agoo/impl/PushService;)Lcom/umeng/message/proguard/aR;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->t:Lcom/umeng/message/proguard/aR;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 241
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/android/agoo/impl/PushService;->u:J

    .line 242
    new-instance v0, Lcom/umeng/message/proguard/aR;

    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/umeng/message/proguard/aR;-><init>(Landroid/content/Context;Lcom/umeng/message/proguard/aO;)V

    iput-object v0, p0, Lorg/android/agoo/impl/PushService;->t:Lcom/umeng/message/proguard/aR;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    const-string v1, "PushService"

    const-string v2, "initMessage"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private e()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 287
    :try_start_0
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 288
    const-string v1, "PushService"

    const-string v2, "mContext == null"

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :goto_0
    return v0

    .line 291
    :cond_0
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-static {v1}, Lorg/android/agoo/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/android/agoo/impl/PushService;->w:Ljava/lang/String;

    .line 292
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->w:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 293
    const-string v1, "ERROR_APPKEY_NULL"

    invoke-virtual {p0, v1}, Lorg/android/agoo/impl/PushService;->onHandleError(Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :catch_0
    move-exception v1

    goto :goto_0

    .line 296
    :cond_1
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-static {v1}, Lorg/android/agoo/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/android/agoo/impl/PushService;->y:Ljava/lang/String;

    .line 297
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->y:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 298
    const-string v1, "ERROR_TTID_NULL"

    invoke-virtual {p0, v1}, Lorg/android/agoo/impl/PushService;->onHandleError(Ljava/lang/String;)V

    goto :goto_0

    .line 301
    :cond_2
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-static {v1}, Lorg/android/agoo/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/android/agoo/impl/PushService;->x:Ljava/lang/String;

    .line 302
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-static {v1}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/android/agoo/impl/PushService;->z:Ljava/lang/String;

    .line 303
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->z:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 304
    const-string v1, "ERROR_DEVICETOKEN_NULL"

    invoke-virtual {p0, v1}, Lorg/android/agoo/impl/PushService;->onHandleError(Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :cond_3
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->t:Lcom/umeng/message/proguard/aR;

    if-nez v1, :cond_4

    .line 308
    invoke-direct {p0}, Lorg/android/agoo/impl/PushService;->d()V

    .line 313
    :cond_4
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->t:Lcom/umeng/message/proguard/aR;

    iget-object v2, p0, Lorg/android/agoo/impl/PushService;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/umeng/message/proguard/aR;->b(Ljava/lang/String;)V

    .line 314
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->t:Lcom/umeng/message/proguard/aR;

    iget-object v2, p0, Lorg/android/agoo/impl/PushService;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/umeng/message/proguard/aR;->a(Ljava/lang/String;)V

    .line 315
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->t:Lcom/umeng/message/proguard/aR;

    iget-object v2, p0, Lorg/android/agoo/impl/PushService;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/umeng/message/proguard/aR;->c(Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->t:Lcom/umeng/message/proguard/aR;

    iget-object v2, p0, Lorg/android/agoo/impl/PushService;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/umeng/message/proguard/aR;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private f()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 377
    :try_start_0
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-static {v1}, Lorg/android/agoo/a;->j(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 393
    :goto_0
    return v0

    .line 380
    :cond_0
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-static {v1}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 381
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 382
    const-string v1, "PushService"

    const-string v2, "[currentSudoPack==null]"

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 390
    :catch_0
    move-exception v0

    .line 393
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 385
    :cond_2
    iget-object v2, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 386
    const-string v2, "PushService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[currentSudoPack("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")!=appPackage("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private final g()V
    .locals 7

    .prologue
    .line 448
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 449
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v2, v0

    .line 450
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-static {v0}, Lorg/android/agoo/intent/IntentUtil;->getAgooStart(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 451
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    const-string v0, "PushService"

    const-string v1, "action==null"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    const-string v0, "PushService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleDestroyService ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/bd;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":restart]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/umeng/message/proguard/aK;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 462
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 463
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    const-string v1, "method"

    const-string v5, "start"

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    const-string v1, "eventId"

    const-string v5, "handleDestroyService"

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    const/16 v1, 0x20

    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 470
    const/high16 v1, 0x10000000

    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 471
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    invoke-static {v1, v5, v4, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 473
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 475
    :catch_0
    move-exception v0

    .line 476
    const-string v1, "PushService"

    const-string v2, "handleDestroyService"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/aK;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    .line 325
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/proguard/aD;->d(Landroid/content/Context;)V

    .line 326
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-static {v0}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 327
    new-instance v1, Lorg/android/agoo/net/async/c;

    iget-object v2, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    const-string v3, "androidSystem"

    invoke-direct {v1, v2, v3}, Lorg/android/agoo/net/async/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 328
    iget-object v2, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-static {v2}, Lorg/android/Config;->getConnectHeader(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 329
    invoke-virtual {v1, v2}, Lorg/android/agoo/net/async/c;->a(Ljava/util/LinkedHashMap;)V

    .line 330
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    const-string v2, "androidSystem"

    invoke-static {v1, v0, v2}, Lcom/umeng/message/proguard/aD;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-direct {p0}, Lorg/android/agoo/impl/PushService;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    const-string v0, "ERROR_NEED_ELECTION"

    invoke-virtual {p0, v0}, Lorg/android/agoo/impl/PushService;->onHandleError(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Lorg/android/agoo/impl/PushService;->c()V

    .line 344
    :goto_0
    return-void

    .line 336
    :cond_0
    invoke-direct {p0}, Lorg/android/agoo/impl/PushService;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 337
    invoke-virtual {p0}, Lorg/android/agoo/impl/PushService;->c()V

    goto :goto_0

    .line 341
    :catch_0
    move-exception v0

    goto :goto_0

    .line 340
    :cond_1
    const-string v0, "androidSystemSuccess"

    invoke-direct {p0, v0}, Lorg/android/agoo/impl/PushService;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method protected b()V
    .locals 4

    .prologue
    .line 348
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-static {v0}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 349
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/proguard/aD;->d(Landroid/content/Context;)V

    .line 350
    new-instance v1, Lorg/android/agoo/net/async/c;

    iget-object v2, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    const-string v3, "hasComeFromCock"

    invoke-direct {v1, v2, v3}, Lorg/android/agoo/net/async/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 351
    iget-object v2, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-static {v2}, Lorg/android/Config;->getConnectHeader(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 352
    const-string v3, "currentSudoPack"

    invoke-virtual {v2, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    invoke-virtual {v1, v2}, Lorg/android/agoo/net/async/c;->a(Ljava/util/LinkedHashMap;)V

    .line 354
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    const-string v3, "hasComeFromCock"

    invoke-static {v1, v0, v3}, Lcom/umeng/message/proguard/aD;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-direct {p0}, Lorg/android/agoo/impl/PushService;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    const-string v0, "ERROR_NEED_ELECTION"

    invoke-virtual {p0, v0}, Lorg/android/agoo/impl/PushService;->onHandleError(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Lorg/android/agoo/impl/PushService;->c()V

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    invoke-direct {p0}, Lorg/android/agoo/impl/PushService;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 361
    invoke-virtual {p0}, Lorg/android/agoo/impl/PushService;->c()V

    goto :goto_0

    .line 370
    :catch_0
    move-exception v0

    goto :goto_0

    .line 364
    :cond_2
    const-string v0, "hasComeFromCock"

    invoke-direct {p0, v0}, Lorg/android/agoo/impl/PushService;->b(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/proguard/aB;->a(Landroid/content/Context;)Z

    move-result v0

    .line 366
    if-eqz v0, :cond_0

    .line 367
    new-instance v0, Lorg/android/agoo/net/async/c;

    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    const-string v3, "hasComeFromCockSuccess"

    invoke-direct {v0, v1, v3}, Lorg/android/agoo/net/async/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 368
    invoke-virtual {v0, v2}, Lorg/android/agoo/net/async/c;->a(Ljava/util/LinkedHashMap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public bind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    .line 74
    const-string v4, "PushService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onBind:["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "],intent categries["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "org.agoo.android.intent.action.PING_V4"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-static {v0}, Lorg/android/Config;->getAgooGroup(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->F:Lorg/android/agoo/service/IMessageService$Stub;

    .line 86
    :cond_1
    return-object v1

    .line 74
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final c()V
    .locals 2

    .prologue
    .line 521
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/android/agoo/impl/PushService;->q:Z

    .line 522
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->p:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->p:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 525
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public create(Landroid/content/Context;Lorg/android/agoo/callback/IServiceCallBack;)V
    .locals 4

    .prologue
    .line 203
    :try_start_0
    const-string v0, "PushService"

    const-string v1, ">>> agoo system is creating >>>"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v0, "agoo.pid"

    invoke-static {p1, v0}, Lcom/umeng/message/proguard/ba;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 206
    const/16 v0, 0x258

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/umeng/message/proguard/aX;->a(Landroid/content/Context;IZ)Lcom/umeng/message/proguard/aX;

    move-result-object v0

    sput-object v0, Lorg/android/agoo/impl/PushService;->B:Lcom/umeng/message/proguard/aX;

    .line 207
    iput-object p1, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    .line 208
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/proguard/aK;->a(Landroid/content/Context;)V

    .line 209
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;)V

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/agoo/impl/PushService;->q:Z

    .line 211
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "se-service"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/android/agoo/impl/PushService;->o:Landroid/os/HandlerThread;

    .line 212
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->o:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 213
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->o:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lorg/android/agoo/impl/PushService;->p:Landroid/os/Handler;

    .line 214
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 215
    const-string v1, "PushService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create currentPack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v1, "PushService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentSudo(context)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-static {p1}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 218
    const-string v2, "PushService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    if-eqz v1, :cond_0

    .line 220
    sget-object v0, Lorg/android/agoo/impl/PushService;->B:Lcom/umeng/message/proguard/aX;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/aX;->a()V

    .line 222
    :cond_0
    iput-object p2, p0, Lorg/android/agoo/impl/PushService;->D:Lorg/android/agoo/callback/IServiceCallBack;

    .line 223
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lorg/android/agoo/impl/PushService;->v:Landroid/app/AlarmManager;

    .line 225
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 227
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 228
    const-string v1, "agoo_action_re_election"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    iget-object v2, p0, Lorg/android/agoo/impl/PushService;->E:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 231
    :cond_1
    invoke-direct {p0}, Lorg/android/agoo/impl/PushService;->d()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    const-string v1, "PushService"

    const-string v2, "create"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public destroy(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 97
    :try_start_0
    const-string v0, "PushService"

    const-string v1, "PushService destroying"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 100
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->t:Lcom/umeng/message/proguard/aR;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->t:Lcom/umeng/message/proguard/aR;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/aR;->i()V

    .line 103
    :cond_0
    new-instance v0, Lorg/android/agoo/impl/PushService$1;

    invoke-direct {v0, p0}, Lorg/android/agoo/impl/PushService$1;-><init>(Lorg/android/agoo/impl/PushService;)V

    invoke-static {v0}, Lcom/umeng/message/proguard/bn;->a(Ljava/lang/Runnable;)V

    .line 111
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->E:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 112
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->r:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->r:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 115
    :cond_1
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->v:Landroid/app/AlarmManager;

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->v:Landroid/app/AlarmManager;

    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->r:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 120
    :cond_2
    const-string v0, "PushService"

    const-string v1, "PushService destroyed"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    const-string v0, "PushService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PushService hasNeedNotKill[handleDestroyService]+hasNeedNotKill="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/android/agoo/impl/PushService;->q:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-boolean v0, p0, Lorg/android/agoo/impl/PushService;->q:Z

    if-eqz v0, :cond_3

    .line 127
    const-string v0, "PushService"

    const-string v1, "PushService hasNeedNotKill[handleDestroyService]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Lorg/android/agoo/impl/PushService;->g()V

    .line 133
    :goto_0
    iput-object v4, p0, Lorg/android/agoo/impl/PushService;->r:Landroid/app/PendingIntent;

    .line 134
    iput-object v4, p0, Lorg/android/agoo/impl/PushService;->v:Landroid/app/AlarmManager;

    .line 136
    :goto_1
    return-void

    .line 131
    :cond_3
    invoke-static {p1}, Lcom/umeng/message/proguard/aC;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    :try_start_1
    const-string v1, "PushService"

    const-string v2, "destroy"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    const-string v0, "PushService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PushService hasNeedNotKill[handleDestroyService]+hasNeedNotKill="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/android/agoo/impl/PushService;->q:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-boolean v0, p0, Lorg/android/agoo/impl/PushService;->q:Z

    if-eqz v0, :cond_4

    .line 127
    const-string v0, "PushService"

    const-string v1, "PushService hasNeedNotKill[handleDestroyService]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Lorg/android/agoo/impl/PushService;->g()V

    .line 133
    :goto_2
    iput-object v4, p0, Lorg/android/agoo/impl/PushService;->r:Landroid/app/PendingIntent;

    .line 134
    iput-object v4, p0, Lorg/android/agoo/impl/PushService;->v:Landroid/app/AlarmManager;

    goto :goto_1

    .line 131
    :cond_4
    invoke-static {p1}, Lcom/umeng/message/proguard/aC;->b(Landroid/content/Context;)V

    goto :goto_2

    .line 124
    :catchall_0
    move-exception v0

    const-string v1, "PushService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PushService hasNeedNotKill[handleDestroyService]+hasNeedNotKill="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lorg/android/agoo/impl/PushService;->q:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-boolean v1, p0, Lorg/android/agoo/impl/PushService;->q:Z

    if-eqz v1, :cond_5

    .line 127
    const-string v1, "PushService"

    const-string v2, "PushService hasNeedNotKill[handleDestroyService]"

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Lorg/android/agoo/impl/PushService;->g()V

    .line 133
    :goto_3
    iput-object v4, p0, Lorg/android/agoo/impl/PushService;->r:Landroid/app/PendingIntent;

    .line 134
    iput-object v4, p0, Lorg/android/agoo/impl/PushService;->v:Landroid/app/AlarmManager;

    throw v0

    .line 131
    :cond_5
    invoke-static {p1}, Lcom/umeng/message/proguard/aC;->b(Landroid/content/Context;)V

    goto :goto_3
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .prologue
    .line 251
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 282
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 253
    :pswitch_0
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-static {v0}, Lorg/android/agoo/impl/PushService;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    goto :goto_0

    .line 256
    :pswitch_1
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-static {v0}, Lorg/android/agoo/impl/PushService;->b(Landroid/content/Context;)V

    .line 257
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->D:Lorg/android/agoo/callback/IServiceCallBack;

    invoke-interface {v0}, Lorg/android/agoo/callback/IServiceCallBack;->stop()V

    goto :goto_0

    .line 260
    :pswitch_2
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-static {v0}, Lorg/android/agoo/impl/PushService;->a(Landroid/content/Context;)V

    .line 261
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Lorg/android/agoo/impl/PushService;->a(Landroid/content/Intent;II)V

    goto :goto_0

    .line 265
    :pswitch_3
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/proguard/aX;->b(Landroid/content/Context;)V

    .line 266
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-static {v0}, Lorg/android/agoo/impl/PushService;->a(Landroid/content/Context;)V

    .line 267
    invoke-virtual {p0}, Lorg/android/agoo/impl/PushService;->b()V

    goto :goto_0

    .line 270
    :pswitch_4
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-static {v0}, Lorg/android/agoo/impl/PushService;->a(Landroid/content/Context;)V

    .line 271
    invoke-virtual {p0}, Lorg/android/agoo/impl/PushService;->a()V

    goto :goto_0

    .line 274
    :pswitch_5
    const-string v0, "ERROR_NEED_ELECTION"

    invoke-virtual {p0, v0}, Lorg/android/agoo/impl/PushService;->onHandleError(Ljava/lang/String;)V

    .line 275
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/android/agoo/impl/PushService;->s:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public hasComeFromCock(Landroid/content/Intent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 483
    :try_start_0
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-static {v2}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 484
    invoke-virtual {p0}, Lorg/android/agoo/impl/PushService;->c()V

    .line 486
    :cond_0
    if-nez p1, :cond_1

    .line 487
    const-string v1, "PushService"

    const-string v2, "hasComeFromCock[intent==null]"

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :goto_0
    return v0

    .line 490
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 491
    iget-object v2, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-static {v2}, Lorg/android/agoo/intent/IntentUtil;->getAgooCockroach(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 493
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 495
    :cond_2
    const-string v1, "PushService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasComeFromCock[action==null]or[action!="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 514
    :catch_0
    move-exception v0

    .line 516
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 499
    :cond_3
    const-string v2, "cockroach"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 500
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "cockroach-PPreotect"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 501
    :cond_4
    const-string v1, "PushService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasComeFromCock[cockroach==null]or[cockroach!="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 505
    :cond_5
    const-string v2, "pack"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 506
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 508
    :cond_6
    const-string v1, "PushService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasComeFromCock[pack==null] or ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 512
    :cond_7
    const-string v0, "PushService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasComeFromCock["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1
.end method

.method public onHandleCommand(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 583
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-static {v0, p1}, Lorg/android/agoo/intent/IntentUtil;->createComandIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 584
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    :goto_0
    return-void

    .line 586
    :catch_0
    move-exception v0

    .line 587
    const-string v1, "PushService"

    const-string v2, "handleError"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onHandleError(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 594
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    const-string v1, "error"

    invoke-static {v0, v1}, Lorg/android/agoo/intent/IntentUtil;->createComandIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 596
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 597
    const-string v1, "error"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 598
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    :goto_0
    return-void

    .line 599
    :catch_0
    move-exception v0

    .line 600
    const-string v1, "PushService"

    const-string v2, "handleError"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onHandleMessage(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 611
    :try_start_0
    const-string v0, "PushService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHandleMessage current tid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->p:Landroid/os/Handler;

    new-instance v1, Lorg/android/agoo/impl/PushService$b;

    iget-object v2, p0, Lorg/android/agoo/impl/PushService;->t:Lcom/umeng/message/proguard/aR;

    invoke-direct {v1, p0, p1, p2, v2}, Lorg/android/agoo/impl/PushService$b;-><init>(Lorg/android/agoo/impl/PushService;Ljava/lang/String;Landroid/os/Bundle;Lcom/umeng/message/proguard/aR;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    :goto_0
    return-void

    .line 614
    :catch_0
    move-exception v0

    .line 615
    const-string v1, "PushService"

    const-string v2, "handleMessage error >>"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/aK;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public startCommand(Landroid/content/Intent;II)I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 141
    if-nez p1, :cond_1

    .line 142
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->p:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 169
    :cond_0
    :goto_0
    return v4

    .line 145
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 146
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 147
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 148
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 149
    invoke-virtual {p0, p1}, Lorg/android/agoo/impl/PushService;->hasComeFromCock(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 151
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->p:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    goto :goto_0

    .line 154
    :cond_2
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 155
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->p:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 156
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/proguard/aB;->a(Landroid/content/Context;)Z

    move-result v0

    .line 157
    if-eqz v0, :cond_0

    .line 158
    const-string v0, "eventId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    const-string v1, "PushService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pushService startCommand,eventId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_Success"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    new-instance v1, Lorg/android/agoo/net/async/c;

    iget-object v2, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_Success"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/android/agoo/net/async/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->n:Landroid/content/Context;

    invoke-static {v0}, Lorg/android/Config;->getConnectHeader(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 164
    invoke-virtual {v1, v0}, Lorg/android/agoo/net/async/c;->a(Ljava/util/LinkedHashMap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public unbind(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method
