.class public Lcom/igexin/push/d/c/g;
.super Ljava/lang/Object;


# static fields
.field public static a:I


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:B

.field public h:B

.field public i:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    sput v0, Lcom/igexin/push/d/c/g;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget v0, p0, Lcom/igexin/push/d/c/g;->e:I

    and-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/igexin/push/d/c/g;->g:B

    iget v0, p0, Lcom/igexin/push/d/c/g;->e:I

    and-int/lit8 v0, v0, 0x70

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/igexin/push/d/c/g;->h:B

    iget v0, p0, Lcom/igexin/push/d/c/g;->e:I

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/igexin/push/d/c/g;->i:B

    return-void
.end method

.method public a(B)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lcom/igexin/push/d/c/g;->e:I

    invoke-virtual {p0}, Lcom/igexin/push/d/c/g;->a()V

    return-void
.end method

.method public b()V
    .locals 2

    iget v0, p0, Lcom/igexin/push/d/c/g;->e:I

    iget-byte v1, p0, Lcom/igexin/push/d/c/g;->g:B

    or-int/2addr v0, v1

    iput v0, p0, Lcom/igexin/push/d/c/g;->e:I

    iget v0, p0, Lcom/igexin/push/d/c/g;->e:I

    iget-byte v1, p0, Lcom/igexin/push/d/c/g;->h:B

    or-int/2addr v0, v1

    iput v0, p0, Lcom/igexin/push/d/c/g;->e:I

    iget v0, p0, Lcom/igexin/push/d/c/g;->e:I

    iget-byte v1, p0, Lcom/igexin/push/d/c/g;->i:B

    or-int/2addr v0, v1

    iput v0, p0, Lcom/igexin/push/d/c/g;->e:I

    return-void
.end method

.method public c()I
    .locals 1

    invoke-virtual {p0}, Lcom/igexin/push/d/c/g;->b()V

    iget v0, p0, Lcom/igexin/push/d/c/g;->e:I

    return v0
.end method
