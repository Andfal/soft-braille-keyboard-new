.class public final Le/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Le/d;

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(Le/c;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Le/c;->o:Le/d;

    if-nez v0, :cond_0

    iput-object p0, p1, Le/c;->o:Le/d;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Le/c;->p:Le/d;

    iput-object p0, v0, Le/d;->a:Le/d;

    :goto_0
    iput-object p0, p1, Le/c;->p:Le/d;

    iput p2, p0, Le/d;->b:I

    invoke-virtual {p1, p3}, Le/c;->h(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/d;->c:I

    invoke-virtual {p1, p4}, Le/c;->h(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/d;->d:I

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method b(Le/a;)V
    .locals 2

    iget v0, p0, Le/d;->b:I

    const v1, -0x60001

    and-int/2addr v0, v1

    invoke-virtual {p1, v0}, Le/a;->g(I)Le/a;

    move-result-object v0

    iget v1, p0, Le/d;->c:I

    invoke-virtual {v0, v1}, Le/a;->g(I)Le/a;

    move-result-object v0

    iget v1, p0, Le/d;->d:I

    invoke-virtual {v0, v1}, Le/a;->g(I)Le/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Le/a;->g(I)Le/a;

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
