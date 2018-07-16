.class Lcom/igexin/getuiext/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/igexin/getuiext/a/c;


# direct methods
.method constructor <init>(Lcom/igexin/getuiext/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/getuiext/a/d;->a:Lcom/igexin/getuiext/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/igexin/getuiext/data/a/c;Lcom/igexin/getuiext/data/a/c;)I
    .locals 2

    iget-object v0, p1, Lcom/igexin/getuiext/data/a/c;->b:Ljava/lang/String;

    iget-object v1, p2, Lcom/igexin/getuiext/data/a/c;->b:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/igexin/getuiext/data/a/c;->b:Ljava/lang/String;

    iget-object v1, p2, Lcom/igexin/getuiext/data/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/igexin/getuiext/data/a/c;

    check-cast p2, Lcom/igexin/getuiext/data/a/c;

    invoke-virtual {p0, p1, p2}, Lcom/igexin/getuiext/a/d;->a(Lcom/igexin/getuiext/data/a/c;Lcom/igexin/getuiext/data/a/c;)I

    move-result v0

    return v0
.end method
