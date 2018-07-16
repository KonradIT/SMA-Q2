.class public Lcom/umeng/message/proguard/y;
.super Ljava/lang/Object;
.source "UTMCLogger.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Z

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    const-string v0, "UT:"

    sput-object v0, Lcom/umeng/message/proguard/y;->a:Ljava/lang/String;

    .line 23
    sput-boolean v1, Lcom/umeng/message/proguard/y;->b:Z

    .line 24
    sput-boolean v1, Lcom/umeng/message/proguard/y;->c:Z

    return-void
.end method

.method private static a(IILjava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 48
    invoke-static {p3}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    const/4 v1, 0x1

    if-ne p0, v1, :cond_3

    .line 53
    sget-boolean v1, Lcom/umeng/message/proguard/y;->b:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/umeng/message/proguard/y;->c:Z

    if-eqz v1, :cond_0

    .line 61
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/umeng/message/proguard/y;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 64
    :pswitch_0
    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 56
    :cond_3
    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    .line 57
    sget-boolean v1, Lcom/umeng/message/proguard/y;->b:Z

    if-nez v1, :cond_2

    goto :goto_0

    .line 67
    :pswitch_1
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 70
    :pswitch_2
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    :pswitch_3
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    :pswitch_4
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static a(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    invoke-static {p0, v0, p1, p2}, Lcom/umeng/message/proguard/y;->a(IILjava/lang/String;Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 31
    sput-boolean p0, Lcom/umeng/message/proguard/y;->b:Z

    .line 32
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/umeng/message/proguard/y;->b:Z

    return v0
.end method

.method public static b(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x3

    invoke-static {p0, v0, p1, p2}, Lcom/umeng/message/proguard/y;->a(IILjava/lang/String;Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public static b(Z)V
    .locals 0

    .prologue
    .line 43
    sput-boolean p0, Lcom/umeng/message/proguard/y;->c:Z

    .line 44
    return-void
.end method

.method public static c(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x5

    invoke-static {p0, v0, p1, p2}, Lcom/umeng/message/proguard/y;->a(IILjava/lang/String;Ljava/lang/Object;)V

    .line 99
    return-void
.end method
