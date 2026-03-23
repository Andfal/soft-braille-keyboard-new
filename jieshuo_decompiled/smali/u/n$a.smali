.class Lu/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Lw/d;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/m;)V
    .locals 0

    invoke-direct {p0}, Lu/n$a;-><init>()V

    return-void
.end method

.method static bridge synthetic a(Lu/n$a;)Lu/h;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method static bridge synthetic b(Lu/n$a;)I
    .locals 0

    iget p0, p0, Lu/n$a;->a:I

    return p0
.end method

.method static bridge synthetic c(Lu/n$a;)Lw/d;
    .locals 0

    iget-object p0, p0, Lu/n$a;->b:Lw/d;

    return-object p0
.end method


# virtual methods
.method public d(ILw/d;Lu/h;)V
    .locals 0

    iput p1, p0, Lu/n$a;->a:I

    iput-object p2, p0, Lu/n$a;->b:Lw/d;

    return-void
.end method

.method public e()Lu/n;
    .locals 4

    new-instance v0, Lu/n;

    iget v1, p0, Lu/n$a;->a:I

    iget-object v2, p0, Lu/n$a;->b:Lw/d;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lu/n;-><init>(ILw/d;Lu/h;Lu/o;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lu/n;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lu/n;

    iget v0, p0, Lu/n$a;->a:I

    iget-object v1, p0, Lu/n$a;->b:Lw/d;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lu/n;->d(Lu/n;ILw/d;Lu/h;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lu/n$a;->a:I

    iget-object v1, p0, Lu/n$a;->b:Lw/d;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lu/n;->e(ILw/d;Lu/h;)I

    move-result v0

    return v0
.end method
