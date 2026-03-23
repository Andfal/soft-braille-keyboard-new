.class Lc/g$w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/g$b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "w"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/g$w;->a:Ljava/lang/String;

    invoke-static {p1}, Ll/l;->I(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lc/g$w;->b:J

    iput-boolean p2, p0, Lc/g$w;->c:Z

    return-void
.end method

.method static synthetic b(Lc/g$w;)Z
    .locals 0

    iget-boolean p0, p0, Lc/g$w;->c:Z

    return p0
.end method

.method static synthetic c(Lc/g$w;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lc/g$w;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Lc/g;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-boolean p2, p0, Lc/g$w;->c:Z

    if-eqz p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lc/g$w;->a:Ljava/lang/String;

    invoke-virtual {p1, p3, v0, p2}, Lc/g;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    return-object p2

    :cond_0
    iget-object p2, p0, Lc/g$w;->a:Ljava/lang/String;

    iget-wide v0, p0, Lc/g$w;->b:J

    invoke-virtual {p1, p3, p2, v0, v1}, Lc/g;->k(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
