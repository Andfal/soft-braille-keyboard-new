.class Lc/g$m;
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
    name = "m"
.end annotation


# static fields
.field public static final a:Lc/g$m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/g$m;

    invoke-direct {v0}, Lc/g$m;-><init>()V

    sput-object v0, Lc/g$m;->a:Lc/g$m;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/g;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1, p3}, Lc/g;->f(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
