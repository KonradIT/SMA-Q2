.class public Lcom/umeng/message/proguard/al;
.super Ljava/lang/Object;
.source "UTMCKeyArraySorter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/message/proguard/al$1;,
        Lcom/umeng/message/proguard/al$a;,
        Lcom/umeng/message/proguard/al$b;
    }
.end annotation


# static fields
.field private static a:Lcom/umeng/message/proguard/al;


# instance fields
.field private b:Lcom/umeng/message/proguard/al$b;

.field private c:Lcom/umeng/message/proguard/al$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/message/proguard/al;->a:Lcom/umeng/message/proguard/al;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/umeng/message/proguard/al$b;

    invoke-direct {v0, p0, v1}, Lcom/umeng/message/proguard/al$b;-><init>(Lcom/umeng/message/proguard/al;Lcom/umeng/message/proguard/al$1;)V

    iput-object v0, p0, Lcom/umeng/message/proguard/al;->b:Lcom/umeng/message/proguard/al$b;

    .line 15
    new-instance v0, Lcom/umeng/message/proguard/al$a;

    invoke-direct {v0, p0, v1}, Lcom/umeng/message/proguard/al$a;-><init>(Lcom/umeng/message/proguard/al;Lcom/umeng/message/proguard/al$1;)V

    iput-object v0, p0, Lcom/umeng/message/proguard/al;->c:Lcom/umeng/message/proguard/al$a;

    .line 19
    return-void
.end method

.method public static declared-synchronized a()Lcom/umeng/message/proguard/al;
    .locals 2

    .prologue
    .line 22
    const-class v1, Lcom/umeng/message/proguard/al;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/umeng/message/proguard/al;->a:Lcom/umeng/message/proguard/al;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/umeng/message/proguard/al;

    invoke-direct {v0}, Lcom/umeng/message/proguard/al;-><init>()V

    sput-object v0, Lcom/umeng/message/proguard/al;->a:Lcom/umeng/message/proguard/al;

    .line 25
    :cond_0
    sget-object v0, Lcom/umeng/message/proguard/al;->a:Lcom/umeng/message/proguard/al;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a([Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    .line 31
    if-eqz p2, :cond_0

    .line 32
    iget-object v0, p0, Lcom/umeng/message/proguard/al;->c:Lcom/umeng/message/proguard/al$a;

    .line 36
    :goto_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    .line 37
    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 40
    :goto_1
    return-object p1

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/proguard/al;->b:Lcom/umeng/message/proguard/al$b;

    goto :goto_0

    .line 40
    :cond_1
    const/4 p1, 0x0

    goto :goto_1
.end method
