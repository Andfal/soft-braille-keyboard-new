.class public final Lb3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb3/b$b;,
        Lb3/b$a;
    }
.end annotation


# static fields
.field public static final c:Lb3/b$a;


# instance fields
.field private final a:Ly2/Request;

.field private final b:Ly2/Response;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb3/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb3/b$a;-><init>(Lt2/d;)V

    sput-object v0, Lb3/b;->c:Lb3/b$a;

    return-void
.end method

.method public constructor <init>(Ly2/Request;Ly2/Response;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/b;->a:Ly2/Request;

    iput-object p2, p0, Lb3/b;->b:Ly2/Response;

    return-void
.end method


# virtual methods
.method public final a()Ly2/Response;
    .locals 1

    iget-object v0, p0, Lb3/b;->b:Ly2/Response;

    return-object v0
.end method

.method public final b()Ly2/Request;
    .locals 1

    iget-object v0, p0, Lb3/b;->a:Ly2/Request;

    return-object v0
.end method
