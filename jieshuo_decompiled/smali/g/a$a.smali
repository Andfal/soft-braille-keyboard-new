.class Lg/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final d:Ll/g;

.field private final e:Ljava/lang/String;

.field private f:[Ll/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lf/i;Ll/g;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, -0x1

    iput p2, p0, Lg/a$a;->a:I

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lg/a$a;->b:Ljava/util/Map;

    iput-object p1, p0, Lg/a$a;->e:Ljava/lang/String;

    iget-object p1, p3, Ll/g;->a:Ljava/lang/Class;

    iput-object p1, p0, Lg/a$a;->c:Ljava/lang/Class;

    iput p4, p0, Lg/a$a;->a:I

    iput-object p3, p0, Lg/a$a;->d:Ll/g;

    iget-object p1, p3, Ll/g;->h:[Ll/c;

    iput-object p1, p0, Lg/a$a;->f:[Ll/c;

    return-void
.end method

.method static synthetic a(Lg/a$a;)Ll/g;
    .locals 0

    iget-object p0, p0, Lg/a$a;->d:Ll/g;

    return-object p0
.end method

.method static synthetic b(Lg/a$a;)I
    .locals 0

    iget p0, p0, Lg/a$a;->a:I

    return p0
.end method

.method static synthetic c(Lg/a$a;)[Ll/c;
    .locals 0

    iget-object p0, p0, Lg/a$a;->f:[Ll/c;

    return-object p0
.end method

.method static synthetic d(Lg/a$a;[Ll/c;)[Ll/c;
    .locals 0

    iput-object p1, p0, Lg/a$a;->f:[Ll/c;

    return-object p1
.end method

.method static synthetic e(Lg/a$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lg/a$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lg/a$a;)Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lg/a$a;->c:Ljava/lang/Class;

    return-object p0
.end method


# virtual methods
.method public g()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lg/a$a;->d:Ll/g;

    iget-object v0, v0, Ll/g;->b:Ljava/lang/Class;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/a$a;->c:Ljava/lang/Class;

    :cond_0
    return-object v0
.end method

.method public h(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lg/a$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/a$a;->b:Ljava/util/Map;

    iget v1, p0, Lg/a$a;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lg/a$a;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lg/a$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public i(Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Lg/a$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/a$a;->b:Ljava/util/Map;

    iget v1, p0, Lg/a$a;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lg/a$a;->a:I

    add-int/2addr v0, p2

    iput v0, p0, Lg/a$a;->a:I

    :cond_0
    iget-object p2, p0, Lg/a$a;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method
