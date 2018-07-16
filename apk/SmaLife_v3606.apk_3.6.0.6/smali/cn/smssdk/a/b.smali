.class public Lcn/smssdk/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lcn/smssdk/contact/a;

.field private c:Lcn/smssdk/utils/e;

.field private d:Lcn/smssdk/utils/Protocols;

.field private e:Lcn/smssdk/a/a;

.field private f:I

.field private g:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/smssdk/a/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcn/smssdk/a/b;->a:Landroid/os/Handler;

    invoke-static {p1}, Lcn/smssdk/contact/a;->a(Landroid/content/Context;)Lcn/smssdk/contact/a;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/a/b;->b:Lcn/smssdk/contact/a;

    const-string v0, "SMSSDK"

    invoke-static {p1, v0}, Lcn/smssdk/utils/e;->a(Landroid/content/Context;Ljava/lang/String;)Lcn/smssdk/utils/e;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/a/b;->c:Lcn/smssdk/utils/e;

    invoke-static {p1}, Lcn/smssdk/utils/Protocols;->a(Landroid/content/Context;)Lcn/smssdk/utils/Protocols;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/a/b;->d:Lcn/smssdk/utils/Protocols;

    iput-object p2, p0, Lcn/smssdk/a/b;->e:Lcn/smssdk/a/a;

    return-void
.end method

.method static synthetic a(Lcn/smssdk/a/b;)Landroid/os/Handler$Callback;
    .locals 1

    iget-object v0, p0, Lcn/smssdk/a/b;->g:Landroid/os/Handler$Callback;

    return-object v0
.end method

.method static synthetic b(Lcn/smssdk/a/b;)I
    .locals 1

    iget v0, p0, Lcn/smssdk/a/b;->f:I

    return v0
.end method


# virtual methods
.method public a()I
    .locals 11

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/smssdk/a/b;->b:Lcn/smssdk/contact/a;

    invoke-virtual {v1}, Lcn/smssdk/contact/a;->b()V

    iget-object v1, p0, Lcn/smssdk/a/b;->b:Lcn/smssdk/contact/a;

    invoke-virtual {v1}, Lcn/smssdk/contact/a;->c()[Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcn/smssdk/a/b;->c:Lcn/smssdk/utils/e;

    invoke-virtual {v1}, Lcn/smssdk/utils/e;->i()[Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcn/smssdk/a/b;->c:Lcn/smssdk/utils/e;

    invoke-virtual {v1, v4}, Lcn/smssdk/utils/e;->a([Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    array-length v7, v4

    move v3, v0

    :goto_0
    if-ge v3, v7, :cond_4

    aget-object v8, v4, v3

    if-nez v8, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    array-length v9, v5

    move v2, v0

    :goto_2
    if-ge v2, v9, :cond_2

    aget-object v10, v5, v2

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v1, v0

    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    move v1, v0

    :goto_3
    array-length v0, v2

    if-ge v1, v0, :cond_5

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcn/smssdk/a/b;->d:Lcn/smssdk/utils/Protocols;

    invoke-virtual {v0, v2}, Lcn/smssdk/utils/Protocols;->a([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcn/smssdk/a/b;->e:Lcn/smssdk/a/a;

    invoke-virtual {v1, v0}, Lcn/smssdk/a/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcn/smssdk/a/b;->c:Lcn/smssdk/utils/e;

    invoke-virtual {v1, v0}, Lcn/smssdk/utils/e;->c(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcn/smssdk/a/b;->c:Lcn/smssdk/utils/e;

    invoke-virtual {v1}, Lcn/smssdk/utils/e;->h()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_6
    return v0
.end method

.method public a(ILandroid/os/Handler$Callback;)V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcn/smssdk/a/b;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput p1, p0, Lcn/smssdk/a/b;->f:I

    iput-object p2, p0, Lcn/smssdk/a/b;->g:Landroid/os/Handler$Callback;

    iget-object v0, p0, Lcn/smssdk/a/b;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    new-instance v0, Lcn/smssdk/a/c;

    invoke-direct {v0, p0}, Lcn/smssdk/a/c;-><init>(Lcn/smssdk/a/b;)V

    invoke-virtual {v0}, Lcn/smssdk/a/c;->start()V

    const/4 v0, 0x0

    return v0
.end method
