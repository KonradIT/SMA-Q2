.class Lcom/google/protobuf/UnmodifiableLazyStringList$2;
.super Ljava/lang/Object;
.source "UnmodifiableLazyStringList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/UnmodifiableLazyStringList;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/google/protobuf/UnmodifiableLazyStringList;


# direct methods
.method constructor <init>(Lcom/google/protobuf/UnmodifiableLazyStringList;)V
    .locals 1

    .prologue
    .line 128
    iput-object p1, p0, Lcom/google/protobuf/UnmodifiableLazyStringList$2;->b:Lcom/google/protobuf/UnmodifiableLazyStringList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iget-object v0, p0, Lcom/google/protobuf/UnmodifiableLazyStringList$2;->b:Lcom/google/protobuf/UnmodifiableLazyStringList;

    invoke-static {v0}, Lcom/google/protobuf/UnmodifiableLazyStringList;->a(Lcom/google/protobuf/UnmodifiableLazyStringList;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/UnmodifiableLazyStringList$2;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/protobuf/UnmodifiableLazyStringList$2;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/protobuf/UnmodifiableLazyStringList$2;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/google/protobuf/UnmodifiableLazyStringList$2;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 143
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
