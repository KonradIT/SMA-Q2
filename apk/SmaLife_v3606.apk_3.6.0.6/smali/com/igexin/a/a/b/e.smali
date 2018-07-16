.class public Lcom/igexin/a/a/b/e;
.super Lcom/igexin/a/a/d/a;


# instance fields
.field a:Lcom/igexin/a/a/b/b;

.field volatile b:Lcom/igexin/a/a/d/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/igexin/a/a/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/igexin/a/a/d/a/a;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/a/b/e;->b:Lcom/igexin/a/a/d/a/a;

    return-object v0
.end method

.method public final a(Lcom/igexin/a/a/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/a/b/e;->a:Lcom/igexin/a/a/b/b;

    return-void
.end method

.method public final a(Lcom/igexin/a/a/d/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/a/b/e;->b:Lcom/igexin/a/a/d/a/a;

    return-void
.end method

.method public b()I
    .locals 1

    const/16 v0, 0x801

    return v0
.end method
