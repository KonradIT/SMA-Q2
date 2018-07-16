.class public abstract Lcom/igexin/a/a/b/f;
.super Lcom/igexin/a/a/d/d;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/igexin/a/a/b/c;

.field public c:Ljava/lang/Object;

.field public d:Lcom/igexin/a/a/b/e;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/igexin/a/a/b/c;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/igexin/a/a/d/d;-><init>(I)V

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/igexin/a/a/b/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/a/b/f;->a:Ljava/lang/String;

    :cond_0
    iput-object p3, p0, Lcom/igexin/a/a/b/f;->b:Lcom/igexin/a/a/b/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/igexin/a/a/b/c;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/igexin/a/a/b/f;-><init>(ILjava/lang/String;Lcom/igexin/a/a/b/c;)V

    return-void
.end method

.method private final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/igexin/a/a/b/g;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/b/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public f()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/igexin/a/a/b/f;->b:Lcom/igexin/a/a/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/a/a/b/f;->b:Lcom/igexin/a/a/b/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igexin/a/a/b/c;->a(Z)V

    :cond_0
    iput-object v2, p0, Lcom/igexin/a/a/b/f;->b:Lcom/igexin/a/a/b/c;

    iput-object v2, p0, Lcom/igexin/a/a/b/f;->d:Lcom/igexin/a/a/b/e;

    iput-object v2, p0, Lcom/igexin/a/a/b/f;->c:Ljava/lang/Object;

    iput-object v2, p0, Lcom/igexin/a/a/b/f;->a:Ljava/lang/String;

    invoke-super {p0}, Lcom/igexin/a/a/d/d;->f()V

    return-void
.end method
