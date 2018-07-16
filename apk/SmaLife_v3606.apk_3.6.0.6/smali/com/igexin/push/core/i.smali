.class public Lcom/igexin/push/core/i;
.super Ljava/lang/Object;


# static fields
.field private static e:Lcom/igexin/push/core/i;


# instance fields
.field public a:J

.field private b:Lcom/igexin/push/core/l;

.field private c:J

.field private d:Landroid/net/ConnectivityManager;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x3a980

    iput-wide v0, p0, Lcom/igexin/push/core/i;->a:J

    sget-object v0, Lcom/igexin/push/core/l;->a:Lcom/igexin/push/core/l;

    iput-object v0, p0, Lcom/igexin/push/core/i;->b:Lcom/igexin/push/core/l;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/igexin/push/core/i;->c:J

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->i()Landroid/net/ConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/core/i;->d:Landroid/net/ConnectivityManager;

    return-void
.end method

.method public static a()Lcom/igexin/push/core/i;
    .locals 1

    sget-object v0, Lcom/igexin/push/core/i;->e:Lcom/igexin/push/core/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igexin/push/core/i;

    invoke-direct {v0}, Lcom/igexin/push/core/i;-><init>()V

    sput-object v0, Lcom/igexin/push/core/i;->e:Lcom/igexin/push/core/i;

    :cond_0
    sget-object v0, Lcom/igexin/push/core/i;->e:Lcom/igexin/push/core/i;

    return-object v0
.end method


# virtual methods
.method public a(JJ)J
    .locals 1

    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    :goto_0
    return-wide p1

    :cond_0
    move-wide p1, p3

    goto :goto_0
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/igexin/push/core/i;->a:J

    return-void
.end method

.method public a(Lcom/igexin/push/core/k;)V
    .locals 10

    const-wide/16 v8, 0x2

    const-wide/16 v6, 0x1

    const-wide/32 v4, 0xea60

    const-wide/32 v2, 0x3a980

    sget-object v0, Lcom/igexin/push/core/j;->b:[I

    iget-object v1, p0, Lcom/igexin/push/core/i;->b:Lcom/igexin/push/core/l;

    invoke-virtual {v1}, Lcom/igexin/push/core/l;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/igexin/push/core/j;->a:[I

    invoke-virtual {p1}, Lcom/igexin/push/core/k;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iget-wide v0, p0, Lcom/igexin/push/core/i;->a:J

    add-long/2addr v0, v4

    const-wide/32 v2, 0x668a0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/igexin/push/core/i;->b(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/igexin/push/core/i;->a(J)V

    sget-object v0, Lcom/igexin/push/core/l;->a:Lcom/igexin/push/core/l;

    invoke-virtual {p0, v0}, Lcom/igexin/push/core/i;->a(Lcom/igexin/push/core/l;)V

    goto :goto_0

    :pswitch_2
    iget-wide v0, p0, Lcom/igexin/push/core/i;->c:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/igexin/push/core/i;->c:J

    iget-wide v0, p0, Lcom/igexin/push/core/i;->c:J

    cmp-long v0, v0, v8

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/igexin/push/core/i;->a:J

    sub-long/2addr v0, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/igexin/push/core/i;->a(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/igexin/push/core/i;->a(J)V

    sget-object v0, Lcom/igexin/push/core/l;->b:Lcom/igexin/push/core/l;

    invoke-virtual {p0, v0}, Lcom/igexin/push/core/i;->a(Lcom/igexin/push/core/l;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v2, v3}, Lcom/igexin/push/core/i;->a(J)V

    sget-object v0, Lcom/igexin/push/core/l;->a:Lcom/igexin/push/core/l;

    invoke-virtual {p0, v0}, Lcom/igexin/push/core/i;->a(Lcom/igexin/push/core/l;)V

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/igexin/push/core/j;->a:[I

    invoke-virtual {p1}, Lcom/igexin/push/core/k;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/igexin/push/core/l;->b:Lcom/igexin/push/core/l;

    invoke-virtual {p0, v0}, Lcom/igexin/push/core/i;->a(Lcom/igexin/push/core/l;)V

    goto :goto_0

    :pswitch_6
    iget-wide v0, p0, Lcom/igexin/push/core/i;->a:J

    sub-long/2addr v0, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/igexin/push/core/i;->a(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/igexin/push/core/i;->a(J)V

    iget-wide v0, p0, Lcom/igexin/push/core/i;->c:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/igexin/push/core/i;->c:J

    iget-wide v0, p0, Lcom/igexin/push/core/i;->c:J

    cmp-long v0, v0, v8

    if-ltz v0, :cond_0

    invoke-virtual {p0, v2, v3}, Lcom/igexin/push/core/i;->a(J)V

    sget-object v0, Lcom/igexin/push/core/l;->c:Lcom/igexin/push/core/l;

    invoke-virtual {p0, v0}, Lcom/igexin/push/core/i;->a(Lcom/igexin/push/core/l;)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0, v2, v3}, Lcom/igexin/push/core/i;->a(J)V

    sget-object v0, Lcom/igexin/push/core/l;->a:Lcom/igexin/push/core/l;

    invoke-virtual {p0, v0}, Lcom/igexin/push/core/i;->a(Lcom/igexin/push/core/l;)V

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/igexin/push/core/j;->a:[I

    invoke-virtual {p1}, Lcom/igexin/push/core/k;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p0, v2, v3}, Lcom/igexin/push/core/i;->a(J)V

    sget-object v0, Lcom/igexin/push/core/l;->a:Lcom/igexin/push/core/l;

    invoke-virtual {p0, v0}, Lcom/igexin/push/core/i;->a(Lcom/igexin/push/core/l;)V

    goto/16 :goto_0

    :pswitch_a
    sget-object v0, Lcom/igexin/push/core/l;->c:Lcom/igexin/push/core/l;

    invoke-virtual {p0, v0}, Lcom/igexin/push/core/i;->a(Lcom/igexin/push/core/l;)V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p0, v2, v3}, Lcom/igexin/push/core/i;->a(J)V

    sget-object v0, Lcom/igexin/push/core/l;->a:Lcom/igexin/push/core/l;

    invoke-virtual {p0, v0}, Lcom/igexin/push/core/i;->a(Lcom/igexin/push/core/l;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public a(Lcom/igexin/push/core/l;)V
    .locals 2

    iput-object p1, p0, Lcom/igexin/push/core/i;->b:Lcom/igexin/push/core/l;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/igexin/push/core/i;->c:J

    return-void
.end method

.method public b()J
    .locals 5

    const-wide/32 v2, 0x36ee80

    iget-wide v0, p0, Lcom/igexin/push/core/i;->a:J

    sget v4, Lcom/igexin/push/a/k;->h:I

    if-lez v4, :cond_0

    sget v0, Lcom/igexin/push/a/k;->h:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    :cond_0
    iget-object v4, p0, Lcom/igexin/push/core/i;->d:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_1
    move-wide v0, v2

    :cond_2
    :goto_0
    return-wide v0

    :cond_3
    sget-boolean v4, Lcom/igexin/push/core/g;->o:Z

    if-nez v4, :cond_4

    move-wide v0, v2

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/igexin/push/core/f;->f()Lcom/igexin/push/e/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/igexin/push/e/j;->a()Z

    move-result v4

    if-nez v4, :cond_2

    move-wide v0, v2

    goto :goto_0
.end method

.method public b(JJ)J
    .locals 1

    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    :goto_0
    return-wide p1

    :cond_0
    move-wide p1, p3

    goto :goto_0
.end method
