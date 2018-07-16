.class public Lcom/igexin/a/a/b/d;
.super Lcom/igexin/a/a/d/e;


# static fields
.field static a:Lcom/igexin/a/a/b/d;

.field public static f:Z


# instance fields
.field private A:[B

.field private B:[B

.field public volatile b:J

.field public volatile c:J

.field public volatile d:J

.field public volatile e:J

.field g:Lcom/igexin/a/a/d/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/igexin/a/a/d/e;-><init>()V

    return-void
.end method

.method public static c()Lcom/igexin/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/igexin/a/a/b/d;->a:Lcom/igexin/a/a/b/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igexin/a/a/b/d;

    invoke-direct {v0}, Lcom/igexin/a/a/b/d;-><init>()V

    sput-object v0, Lcom/igexin/a/a/b/d;->a:Lcom/igexin/a/a/b/d;

    :cond_0
    sget-object v0, Lcom/igexin/a/a/b/d;->a:Lcom/igexin/a/a/b/d;

    return-object v0
.end method

.method public static e()V
    .locals 4

    const-wide/16 v2, 0x0

    sget-object v0, Lcom/igexin/a/a/b/d;->a:Lcom/igexin/a/a/b/d;

    iput-wide v2, v0, Lcom/igexin/a/a/b/d;->b:J

    sget-object v0, Lcom/igexin/a/a/b/d;->a:Lcom/igexin/a/a/b/d;

    iput-wide v2, v0, Lcom/igexin/a/a/b/d;->d:J

    sget-object v0, Lcom/igexin/a/a/b/d;->a:Lcom/igexin/a/a/b/d;

    iput-wide v2, v0, Lcom/igexin/a/a/b/d;->c:J

    sget-object v0, Lcom/igexin/a/a/b/d;->a:Lcom/igexin/a/a/b/d;

    iput-wide v2, v0, Lcom/igexin/a/a/b/d;->e:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ILcom/igexin/a/a/b/c;)Lcom/igexin/a/a/b/f;
    .locals 13

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v1 .. v12}, Lcom/igexin/a/a/b/d;->a(Ljava/lang/String;ILcom/igexin/a/a/b/c;Ljava/lang/Object;ZIJBLjava/lang/Object;Lcom/igexin/a/a/d/a/d;)Lcom/igexin/a/a/b/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;ILcom/igexin/a/a/b/c;Ljava/lang/Object;Z)Lcom/igexin/a/a/b/f;
    .locals 13

    const/4 v7, -0x1

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v12}, Lcom/igexin/a/a/b/d;->a(Ljava/lang/String;ILcom/igexin/a/a/b/c;Ljava/lang/Object;ZIJBLjava/lang/Object;Lcom/igexin/a/a/d/a/d;)Lcom/igexin/a/a/b/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;ILcom/igexin/a/a/b/c;Ljava/lang/Object;ZIJBLjava/lang/Object;Lcom/igexin/a/a/d/a/d;)Lcom/igexin/a/a/b/f;
    .locals 15

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-virtual/range {v1 .. v14}, Lcom/igexin/a/a/b/d;->a(Ljava/lang/String;ILcom/igexin/a/a/b/c;Ljava/lang/Object;ZIJBLjava/lang/Object;Lcom/igexin/a/a/d/a/d;ILcom/igexin/a/a/d/a/g;)Lcom/igexin/a/a/b/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;ILcom/igexin/a/a/b/c;Ljava/lang/Object;ZIJBLjava/lang/Object;Lcom/igexin/a/a/d/a/d;ILcom/igexin/a/a/d/a/g;)Lcom/igexin/a/a/b/f;
    .locals 13

    iget-object v2, p0, Lcom/igexin/a/a/b/d;->g:Lcom/igexin/a/a/d/a/b;

    if-nez v2, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    iget-object v2, p0, Lcom/igexin/a/a/b/d;->g:Lcom/igexin/a/a/d/a/b;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-interface {v2, p1, v3, v0}, Lcom/igexin/a/a/d/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/igexin/a/a/d/d;

    move-result-object v4

    check-cast v4, Lcom/igexin/a/a/b/f;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/igexin/a/a/b/f;->q()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p13, :cond_1

    move/from16 v0, p12

    move-object/from16 v1, p13

    invoke-virtual {v4, v0, v1}, Lcom/igexin/a/a/b/f;->a(ILcom/igexin/a/a/d/a/g;)V

    :cond_1
    move-object v3, p0

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-virtual/range {v3 .. v12}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/b/f;Ljava/lang/Object;ZIJBLjava/lang/Object;Lcom/igexin/a/a/d/a/d;)Z

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;ILcom/igexin/a/a/b/c;Ljava/lang/Object;ZILcom/igexin/a/a/d/a/g;)Lcom/igexin/a/a/b/f;
    .locals 15

    const/4 v7, -0x1

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v13, p6

    move-object/from16 v14, p7

    invoke-virtual/range {v1 .. v14}, Lcom/igexin/a/a/b/d;->a(Ljava/lang/String;ILcom/igexin/a/a/b/c;Ljava/lang/Object;ZIJBLjava/lang/Object;Lcom/igexin/a/a/d/a/d;ILcom/igexin/a/a/d/a/g;)Lcom/igexin/a/a/b/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/igexin/a/a/d/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/a/b/d;->g:Lcom/igexin/a/a/d/a/b;

    return-void
.end method

.method public a([B)V
    .locals 1

    iput-object p1, p0, Lcom/igexin/a/a/b/d;->A:[B

    invoke-static {p1}, Lcom/igexin/a/b/a;->a([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/a/b/d;->B:[B

    return-void
.end method

.method a(Lcom/igexin/a/a/b/f;Ljava/lang/Object;ZIJBLjava/lang/Object;Lcom/igexin/a/a/d/a/d;)Z
    .locals 1

    iput-object p2, p1, Lcom/igexin/a/a/b/f;->c:Ljava/lang/Object;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p5, p6, v0}, Lcom/igexin/a/a/b/f;->a(JLjava/util/concurrent/TimeUnit;)I

    iput p4, p1, Lcom/igexin/a/a/b/f;->J:I

    invoke-virtual {p1, p7}, Lcom/igexin/a/a/b/f;->a(I)V

    iput-object p8, p1, Lcom/igexin/a/a/b/f;->O:Ljava/lang/Object;

    invoke-virtual {p1, p9}, Lcom/igexin/a/a/b/f;->a(Lcom/igexin/a/a/d/a/d;)V

    invoke-virtual {p0, p1, p3}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;Z)Z

    move-result v0

    return v0
.end method

.method public a()[B
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/a/b/d;->A:[B

    return-object v0
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/a/b/d;->B:[B

    return-object v0
.end method

.method public final d()V
    .locals 0

    invoke-virtual {p0}, Lcom/igexin/a/a/b/d;->g()V

    return-void
.end method
